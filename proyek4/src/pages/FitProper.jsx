import React, { useState, useEffect } from "react";
import axios from "axios";
import Form from 'react-bootstrap/Form'
import Button from "react-bootstrap/Button";

const FitProper = () => {
    const [tableData, setData] = useState([]);
    const [nip, setNip] = useState('');
    const [dataPegawai, setDataPegawai] = useState({
        nip: "",
        nama: "",
        grade: "",
        jabatan: ""
    })
    const getDataPegawai = () => {
        axios
            .get("https://plnstrapi.herokuapp.com/api/pesertas?populate=*")
            .then((res) => {
                console.log(res);
                setData(res.data.data);
            });
    };

    const getDataPeserta = () => {
        axios
            .get(`https://plnstrapi.herokuapp.com/api/pesertas?populate=peserta_nip.jabatan&populate=peserta_nip.grade&filters[peserta_nip][nip][$eq]=${nip}`)
            .then((res) => {
                console.log("getdatapeserta", res.data.data[0].attributes.peserta_nip.data.attributes);
                // setNip(res.data.data[0].attributes.peserta_nip.data.attributes.nip);
                setDataPegawai({
                    nip: res.data.data[0].attributes.peserta_nip.data.attributes.nip,
                    nama: res.data.data[0].attributes.peserta_nip.data.attributes.nama_pegawai,
                    grade: res.data.data[0].attributes.peserta_nip.data.attributes.grade.data.attributes.nama_grade,
                    jabatan: res.data.data[0].attributes.peserta_nip.data.attributes.jabatan.data.attributes.nama_jabatan
                })

            });
    };

    useEffect(() => {
        // if (tableData.length === 0) {
        //     getDataPeserta();
        // }
        console.log("ini nip", dataPegawai);
    });

    return (
        <Form>
            <Form.Group className="mb-3" controlId="formBasicEmail">
                <Form.Label>NIP</Form.Label>
                <Form.Control onChange={(e) => setNip(e.target.value)} placeholder="Enter NIP" />
            </Form.Group>

            <Button onClick={() => getDataPeserta()} variant="primary">
                Cek
            </Button>


            <Form.Group className="mb-3" controlId="nama">
                <Form.Label>Nama</Form.Label>
                <Form.Control type="text" value={dataPegawai.nama} />
            </Form.Group>

            <Form.Group className="mb-3" controlId="jabatan">
                <Form.Label>Jabatan</Form.Label>
                <Form.Control type="text" value={dataPegawai.jabatan} />
            </Form.Group>

            <Form.Group className="mb-3" controlId="grade">
                <Form.Label>Grade</Form.Label>
                <Form.Control type="grade" value={dataPegawai.grade} />
            </Form.Group>

            <Form.Group className="mb-3" controlId="date">
                <Form.Label>Date</Form.Label>
                <Form.Control type="date" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="proyeksi">
                <Form.Label>Proyeksi</Form.Label>
                <Form.Control type="proyeksi" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="jenjangJabatan">
                <Form.Label>Jenjang Jabatan</Form.Label>
                <Form.Control type="jenjangJabatan" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="fitproper">
                <Form.Label>Jenis Fit dan Proper</Form.Label>
                <Form.Control type="" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="urjab">
                <Form.Label>Pilih Urjab</Form.Label>
                <Form.Control type="" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="ppt">
                <Form.Label>Upload PPT</Form.Label>
                <Form.Control type="" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="ppt">
                <Form.Label>Upload CV</Form.Label>
                <Form.Control type="" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="ppt">
                <Form.Label>Upload PPT</Form.Label>
                <Form.Control type="" />
            </Form.Group>

            <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Label>Password</Form.Label>
                <Form.Control type="password" placeholder="Password" />
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicCheckbox">
                <Form.Check type="checkbox" label="Check me out" />
            </Form.Group>
            <Button variant="primary" type="submit">
                Submit
            </Button>
        </Form>
    );
    // return <div className="title"> Fit and Proper</div>;
};


export default FitProper;
