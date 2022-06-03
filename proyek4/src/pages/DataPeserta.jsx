import React, { useState, useEffect } from "react";
import axios from "axios";
import Breadcrumb from "react-bootstrap/Breadcrumb";
import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/Button";

const DataPeserta = () => {
  const [tableData, setData] = useState([]);

  const getDataPegawai = () => {
    axios
      .get(
        "https://plnstrapi.herokuapp.com/api/pesertas?populate=*&populate=peserta_nip.jabatan&populate=peserta_nip.grade&populate=peserta_nip.jenjang&populate=pengujis.penguji_nip"
      )
      .then((res) => {
        console.log(res);
        setData(res.data.data);
      });
  };

  useEffect(() => {
    if (tableData.length === 0) {
      getDataPegawai();
    }
  });

  const rows = () => {};
  return (
    <div className="container">
      <Breadcrumb>
        <Breadcrumb.Item href="/">Dashboard</Breadcrumb.Item>
        <Breadcrumb.Item href="DataPeserta">Data Peserta</Breadcrumb.Item>
      </Breadcrumb>
      <div className="add">
        <Button variant="primary" href="InputDataPeserta">
          Tambah Data Peserta
        </Button>
        {/* <center><form>
            <label>Nama yang dicari :</label>
            <input type="text" name="cari"></input>
            <input class="btn btn-primary btn-sm" type="submit" value="Cari"></input>
          </form></center> */}
      </div>

      <div className="utils">
        <p></p>
      </div>

      <table className="table table-striped table-hover">
        <thead>
          <tr>
            <th>NIP</th>
            <th>Nama</th>
            <th>Jabatan</th>
            <th>Jenjang</th>
            <th>Grade</th>
          </tr>
        </thead>

        <tbody>
          {tableData.map((data, index) => {
            console.log("test penguji:", data.attributes.pengujis.data);
            return (
              <>
                <tr data-index={index}>
                  {/* <td>test</td> */}
                  <td style={{ width: 200 }}>
                    {data.attributes.peserta_nip.data !== null
                      ? data.attributes.peserta_nip.data.attributes.nip
                      : "-"}
                  </td>
                  <td style={{ width: 200 }}>
                    {data.attributes.peserta_nip.data !== null
                      ? data.attributes.peserta_nip.data.attributes.nama_pegawai
                      : "-"}
                  </td>
                  <td style={{ width: 350 }}>
                    {data.attributes.peserta_nip.data !== null
                      ? data.attributes.peserta_nip.data.attributes.jabatan.data
                          .attributes.nama_jabatan
                      : "-"}
                  </td>
                  <td style={{ width: 200 }}>
                    {data.attributes.peserta_nip.data !== null
                      ? data.attributes.peserta_nip.data.attributes.jenjang.data
                          .attributes.nama_jenjang
                      : "-"}
                  </td>
                  <td style={{ width: 200 }}>
                    {data.attributes.peserta_nip.data !== null
                      ? data.attributes.peserta_nip.data.attributes.grade.data
                          .attributes.nama_grade
                      : "-"}
                  </td>
                </tr>
              </>
            );
          })}
        </tbody>
      </table>
    </div>
  );
};

export default DataPeserta;
