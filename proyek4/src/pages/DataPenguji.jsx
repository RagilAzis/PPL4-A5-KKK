import React, { useState, useEffect } from 'react';
import axios from "axios";
import Breadcrumb from "react-bootstrap/Breadcrumb";
import Button from "react-bootstrap/Button";


// const columns = [
//     { field: 'no', headerName: 'No' },
//     { field: 'nama', headerName: 'Nama', width: 300 },
//     { field: 'nip', headerName: 'NIP' },
//     { field: 'jabatan', headerName: 'Jabatan' },
//     { field: 'jenjang', headerName: 'Jenjang' },
//     { field: 'grade', headerName: 'Grade' }
// ]

const DataPenguji = () => {

    const [tableData, setData] = useState([])

    const getDataPenguji = () => {
        axios
            .get("https://plnstrapi.herokuapp.com/api/pengujis?populate=*&populate=penguji_nip.jabatan&populate=penguji_nip.grade&populate=penguji_nip.jenjang")
            .then((res) => {
                console.log(res);
                setData(res.data.data);
            });
    };

    useEffect(() => {
        if (tableData.length === 0) {
            getDataPenguji();
        }
    });

    const rows = () => { };
    return (
        <div className="container">
            <Breadcrumb>
                <Breadcrumb.Item href="/">Dashboard</Breadcrumb.Item>
                <Breadcrumb.Item href="DataPenguji">Data Penguji</Breadcrumb.Item>
            </Breadcrumb>
            <div className="add">
                <Button variant="primary btn-sm" href="InputDataPenguji">Tambah Data Penguji</Button>
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
                                        {data.attributes.penguji_nip.data !== null
                                            ? data.attributes.penguji_nip.data.attributes.nama_pegawai
                                            : "<i>Nama tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.penguji_nip.data !== null
                                            ? data.attributes.penguji_nip.data.attributes.nip
                                            : "<i>NIP tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.penguji_nip.data !== null
                                            ? data.attributes.penguji_nip.data.attributes.jabatan.data.attributes.nama_jabatan
                                            : "<i>Jabatan tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.penguji_nip.data !== null
                                            ? data.attributes.penguji_nip.data.attributes.grade.data.attributes.kode_grade
                                            : "<i>Grade tidak terdeteksi</i>"}
                                    </td>
                                    <td style={{ width: 200 }}>
                                        {data.attributes.penguji_nip.data !== null
                                            ? data.attributes.penguji_nip.data.attributes.jenjang.data.attributes.nama_jenjang
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

    // console.log(tableData)

    // return (
    //     <div style={{ height: 700, width: '500%' }}>
    //         <DataGrid
    //             rows={tableData}
    //             columns={columns}
    //             pageSize={12}
    //         />
    //     </div>
    // )
};

export default DataPenguji