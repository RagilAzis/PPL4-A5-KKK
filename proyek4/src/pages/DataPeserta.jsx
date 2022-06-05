import React, { useState, useEffect } from 'react';
import axios from "axios";
import Breadcrumb from "react-bootstrap/Breadcrumb";
import Button from "react-bootstrap/Button";


const DataPeserta = () => {
  const [tableData, setData] = useState([])

    const getDataPeserta = () => {
        axios
            .get("https://plnstrapi.herokuapp.com/api/pesertas?populate=*&populate=peserta_nip.jabatan&populate=peserta_nip.grade&populate=peserta_nip.jenjang&populate=pengujis.penguji_nip")
            .then((res) => {
                console.log(res);
                setData(res.data.data);
            });
    };

    useEffect(() => {
      if (tableData.length === 0) {
          getDataPeserta();
      }
  });

  const rows = () => { };
    return (
        <div className="container">
            <Breadcrumb>
                <Breadcrumb.Item href="/">Dashboard</Breadcrumb.Item>
                <Breadcrumb.Item href="DataPeserta">Data Peserta</Breadcrumb.Item>
            </Breadcrumb>
            <div className="add">
                <Button variant="primary btn-sm" href="../master/addpeserta">Tambah Data </Button>
            </div>

            <div className="utils">
                <p></p>
            </div>

            <table className="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>NIP</th>
                        <th>Jabatan</th>
                        <th>Grade</th>
                        <th>Jenjang</th>
                    </tr>
                </thead>

                <tbody>
                    {tableData.map((data, index) => {
                        console.log("test", data.attributes);
                        return (
                            <>
                                <tr data-index={index}>
                                    {/* <td>test</td> */}
                                    <td style={{ width: 200 }}>
                                        {data.attributes.peserta_nip.data !== null
                                            ? data.attributes.peserta_nip.data.attributes.nama_pegawai
                                            : "<i>Nama tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.peserta_nip.data !== null
                                            ? data.attributes.peserta_nip.data.attributes.nip
                                            : "<i>NIP tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.peserta_nip.data !== null
                                            ? data.attributes.peserta_nip.data.attributes.jabatan.data.attributes.nama_jabatan
                                            : "<i>Jabatan tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.peserta_nip.data !== null
                                            ? data.attributes.peserta_nip.data.attributes.grade.data.attributes.kode_grade
                                            : "<i>Grade tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.peserta_nip.data !== null
                                            ? data.attributes.peserta_nip.data.attributes.jenjang.data.attributes.nama_jenjang
                                            : "<i>Jenjang tidak terdeteksi</i>"}
                                    </td>
                                    {/* <td>{data.attributes.pegawai.data.attributes.nama_jenjang}</td>
                  <td>
                    {data.attributes.jenjang.data !== null
                      ? data.attributes.jenjang.data.attributes.nama_jenjang
                      : ""}
                  </td> */}
                                    {/* <td>
                    {
                      data.attributes.pegawai.data.attributes.jabatan.data
                        .attributes.nama_jabatan
                    }
                  </td> */}
                                    {/* <td>{data.attributes.grade.data.attributes.nama_grade}</td>
                  <td>
                    {
                      data.attributes.pegawai.data.attributes.jenjang.data
                        .attributes.nama_jenjang
                    }
                  </td> */}
                                </tr>
                            </>
                        );
                    })}
                </tbody>
            </table>
        </div>
    );
};

export default DataPeserta