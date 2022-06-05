import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";
import React, { useState, useEffect } from "react";
import Breadcrumb from "react-bootstrap/Breadcrumb";
import axios from "axios";
import swal from "sweetalert";

const InputDataPenguji = () => {
  // const [onSubmit, setOnSubmit] = useState(false);
  const [onDisable, setOnDisable] = useState(true);
  const [dataDiri, setDataDiri] = useState({
    penguji_nip: "",
    id: "",
    status: "",
  });

  const getDataButton = (value) => {
    console.log("entry");
    axios
      .get(
        `https://plnstrapi.herokuapp.com/api/pegawais?filters[nip][$eq]=${value}&populate=*`
      )
      .then((res) => {
        console.log(res.data.data);
        if (res.data.data.length > 0) {
          if (res.data.data[0].attributes.penguji.data === null) {
            setDataDiri({
              ...dataDiri,
              id: res.data.data[0].id,
              status: 1,
            });
            setOnDisable(false);
            swal("Berhasil!", "berhasil menemukan pegawai.", "success");
          } else {
            setDataDiri({ ...dataDiri, status: 0 });
            swal(
              "Warning",
              "tidak bisa mendaftarkan pegawai yang sudah menjadi penguji",
              "warning"
            );
            setOnDisable(true);
          }
        } else {
          setDataDiri({ ...dataDiri, status: "-1" });
          setOnDisable(false);
          swal("Gagal!", "nip yang anda masukan salah", "error");
        }
      });
  };
  const tambahPenguji = () => {
    const data = {
      penguji_nip: dataDiri.id,
    };
    axios
      .post(`https://plnstrapi.herokuapp.com/api/pengujis`, { data })
      .then((res) => {
        setDataDiri({
          penguji_nip: "",
          id: "",
          status: "",
        });
        setOnDisable(true);
        swal("Berhasil!", "berhasil tambah penguji.", "success");
      })
      .catch((err) => {});
  };
  useEffect(() => {
    console.log("datadiri : ", dataDiri);
  });

  return (
    <div ClassName="container">
      <h2>Tambah Data Penguji</h2>
      <Breadcrumb>
        <Breadcrumb.Item href="/">Dashboard</Breadcrumb.Item>
        <Breadcrumb.Item href="DataPenguji">Data Penguji</Breadcrumb.Item>
        <Breadcrumb.Item href="InputDataPenguji">
          Tambah Data Penguji
        </Breadcrumb.Item>
      </Breadcrumb>
      <Form>
        <Form.Group className="mb-3" controlId="formBasicEmail">
          <Form.Label>NIP Penguji</Form.Label>
          <Form.Control
            type="text"
            placeholder="Masukkan NIP Penguji"
            value={dataDiri.nip}
            onChange={(e) =>
              setDataDiri({ dataDiri, penguji_nip: e.target.value })
            }
            onKeyPress={(e) =>
              e.key === "Enter" ? getDataButton(e.target.value) : ""
            }
          />
          <br></br>
          <Button
            variant="outline-primary"
            type="submit"
            value="Tambah"
            onClick={() => tambahPenguji()}
            disabled={onDisable}
          >
            Submit
          </Button>
        </Form.Group>
      </Form>
    </div>
  );
};

export default InputDataPenguji;
