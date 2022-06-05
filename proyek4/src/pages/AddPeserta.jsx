import React, { useState, useEffect } from "react";
import axios from "axios";
import Form from 'react-bootstrap/Form'
import Button from "react-bootstrap/Button";


const AddPeserta = () => {
    const [tableData, setData] = useState([]);
    const [nip, setNip] = useState('');
    const [onDisable,setOnDisable] = useState(true);
    const [dataPegawai, setDataPegawai] = useState({
        id:"",
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
            .get(`https://plnstrapi.herokuapp.com/api/pegawais?filters[nip][$eq]=${nip}&populate=*`)
            .then((res) => {
                console.log("getdatapeserta", res.data.data);
                // setNip(res.data.data[0].attributes.peserta_nip.data.attributes.nip);
                if(res.data.data.length !== 0 && res.data.data[0].attributes.peserta_nip.data === null){
                    setDataPegawai({
                        id: res.data.data[0].id,
                        nip: res.data.data[0].attributes.nip,
                        nama: res.data.data[0].attributes.nama_pegawai,
                        grade: res.data.data[0].attributes.grade.data.attributes.nama_grade,
                        jabatan: res.data.data[0].attributes.jabatan.data.attributes.nama_jabatan
                    });
                    setOnDisable(false);
                }else if(res.data.data[0].attributes.peserta_nip.data !== null){
                    alert("pegawai sudah menjadi peserta!");
                }else{
                    alert("data tidak ditemukan!");
                }
                

            });
    };

    const postDataPeserta = () => {
        const data = {
            peserta_nip: dataPegawai.id
        }
        // console.log("data nip", data.peserta_nip);
        axios.post(`https://plnstrapi.herokuapp.com/api/pesertas`, { data })
            .then((res) => {
                console.log("success post peserta", res);
                alert("success post");
                setOnDisable(true);
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
            <Button onClick={() => postDataPeserta()} variant="success" disabled={onDisable}>
                add
            </Button>


            <Form.Group className="mb-3" controlId="nama">
                <Form.Label>Nama</Form.Label>
                <Form.Control disabled type="text" value={dataPegawai.nama} />
            </Form.Group>

            <Form.Group className="mb-3" controlId="jabatan">
                <Form.Label>Jabatan</Form.Label>
                <Form.Control disabled type="text" value={dataPegawai.jabatan} />
            </Form.Group>

            <Form.Group className="mb-3" controlId="grade">
                <Form.Label>Grade</Form.Label>
                <Form.Control disabled type="grade" value={dataPegawai.grade} />
            </Form.Group>

        </Form>
    );
    // return <div className="title"> Fit and Proper</div>;
};


export default AddPeserta;
