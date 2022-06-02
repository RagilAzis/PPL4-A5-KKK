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

// import * as React from "react";
// import Table from "@mui/material/Table";
// import TableBody from "@mui/material/TableBody";
// import TableCell from "@mui/material/TableCell";
// import TableContainer from "@mui/material/TableContainer";
// import TableHead from "@mui/material/TableHead";
// import TableRow from "@mui/material/TableRow";
// import Paper from "@mui/material/Paper";

// function createData(name, calories, fat, carbs, protein) {
//   return { name, calories, fat, carbs, protein };
// }

// const rows = [
//   createData("Frozen yoghurt", 159, 6.0, 24, 4.0),
//   createData("Ice cream sandwich", 237, 9.0, 37, 4.3),
//   createData("Eclair", 262, 16.0, 24, 6.0),
//   createData("Cupcake", 305, 3.7, 67, 4.3),
//   createData("Gingerbread", 356, 16.0, 49, 3.9),
// ];

// export default function DataPeserta() {
//   return (
//     <TableContainer component={Paper}>
//       <Table sx={{ minWidth: 650 }} aria-label="simple table">
//         <TableHead>
//           <TableRow>
//             <TableCell>Dessert (100g serving)</TableCell>
//             <TableCell align="right">Calories</TableCell>
//             <TableCell align="right">Fat&nbsp;(g)</TableCell>
//             <TableCell align="right">Carbs&nbsp;(g)</TableCell>
//             <TableCell align="right">Protein&nbsp;(g)</TableCell>
//           </TableRow>
//         </TableHead>
//         <TableBody>
//           {rows.map((row) => (
//             <TableRow
//               key={row.name}
//               sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
//             >
//               <TableCell component="th" scope="row">
//                 {row.name}
//               </TableCell>
//               <TableCell align="right">{row.calories}</TableCell>
//               <TableCell align="right">{row.fat}</TableCell>
//               <TableCell align="right">{row.carbs}</TableCell>
//               <TableCell align="right">{row.protein}</TableCell>
//             </TableRow>
//           ))}
//         </TableBody>
//       </Table>
//     </TableContainer>
//   );
// }
