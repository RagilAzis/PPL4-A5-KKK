import React, { useState, useEffect } from "react";
import axios from "axios";

const Dashboard = () => {
    const [dataPeserta, setDataPeserta] = useState([]);

    const getDataPeserta = () => {
        axios
            .get(
                `https://plnstrapi.herokuapp.com/api/pesertas?populate=*&populate=penguji.penguji_nip&populate=peserta_nip&populate=peserta_nip.jabatan&sort=date:ASC`
            )
            .then((res) => {
                console.log(res);
                setDataPeserta(res.data.data);
            })
    };

    useEffect(() => {
        if (dataPeserta.length === 0) {
            getDataPeserta();

        }
    });

    const rows = () => { };
    return (
        <table className="table table-striped table-hover">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>NIP</th>
                    <th>Jabatan</th>
                    <th>Proyeksi</th>
                    <th>Tanggal</th>
                    <th>Penguji</th>
                </tr>
            </thead>

            <tbody>
                {dataPeserta.map((data, index) => {
                    console.log("test", data.attributes);
                    return (
                        <>
                            <tr data-index={index}>
                                <td style={{ width: 300 }}>
                                    {data.attributes.peserta_nip.data !== null
                                        ? data.attributes.peserta_nip.data.attributes.nama_pegawai
                                        : "Nama tidak terdeteksi"}
                                </td>
                                <td style={{ width: 200 }}>
                                    {data.attributes.peserta_nip.data !== null
                                        ? data.attributes.peserta_nip.data.attributes.nip
                                        : "NIP tidak terdeteksi"}
                                </td>
                                <td style={{ width: 200 }}>
                                    {data.attributes.peserta_nip.data !== null
                                        ? data.attributes.peserta_nip.data.attributes.jabatan.data.attributes.nama_jabatan
                                        : "Jabatan tidak terdeteksi"}
                                </td>
                                <td style={{ width: 200 }}>
                                    {data.attributes.proyeksi !== null
                                        ? data.attributes.proyeksi
                                        : "Proyeksi tidak terdeteksi"}
                                </td>
                                <td style={{ width: 200 }}>
                                    {data.attributes.date !== null
                                        ? data.attributes.date
                                        : "Tanggal tidak terdeteksi"}
                                </td>
                                <td style={{ width: 200 }}>
                                    {data.attributes.penguji.data !== null
                                        ? data.attributes.penguji.data.attributes.penguji_nip.data.attributes.nama_pegawai
                                        : "Penguji tidak terdeteksi"}
                                </td>
                            </tr>
                        </>
                    );
                })}
            </tbody>
        </table>
    );
};

export default Dashboard;
