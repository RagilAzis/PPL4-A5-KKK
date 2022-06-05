 
import './App.css';
import Sidebar from './Component/Sidebar';
import {BrowserRouter as Router , Routes , Route } from 'react-router-dom';
import Dashboard from './pages/Dashboard'
import Master from './pages/Master'
import DataPenguji from './pages/DataPenguji';
import DataPeserta from './pages/DataPeserta';
import FitProper from './pages/FitProper';
import RegFit from './pages/RegFit';
import RegInterview from './pages/RegInterview';
import GradeFit from './pages/GradeFit';
import GradeInterview from './pages/GradeInterview';
import Report from './pages/Report';
import RepGradeFit from './pages/RepGradeFit';
import RepManualFit from './pages/RepManualFit';
import PrintGradeFit from './pages/PrintGradeFit';
import PrintGradeInterview from './pages/PrintGradeInterview';
import RepGradeInterview from './pages/RepGradeInterview';
import AddPeserta from './pages/AddPeserta';
import InputDataPenguji from './pages/InputDataPenguji';

function App() {
  return (
    <div className="App">
      
      <Router>
      <Sidebar>
        <Routes>
        <Route path="/" element={<Dashboard />} />
          <Route path="/master" element={<Master />} />
          <Route path="/master/datapenguji" element={<DataPenguji />} />
          <Route path="/master/datapeserta" element={<DataPeserta />} />
          
          <Route path="/master/addpeserta" element={<AddPeserta />} />
          <Route path="/master/inputdatapenguji" element={<InputDataPenguji />}/>

          <Route path="/fit-proper" element={<FitProper />} />
          <Route path="/fit-proper/regfit" element={<RegFit />} />
          <Route path="/fit-proper/reginterview" element={<RegInterview />} />
          <Route path="/fit-proper/gradefit" element={<GradeFit />} />
          <Route path="/fit-proper/gradeinteview" element={<GradeInterview />} />
          
          <Route path="/report" element={<Report />} />
          <Route path="/report/repgradefit" element={<RepGradeFit />} />
          <Route path="/report/repmanualfit" element={<RepManualFit />} />
          <Route path="/report/printgradefit" element={<PrintGradeFit />} />
          <Route path="/report/repgradeinterview" element={<RepGradeInterview />} />
          <Route path="/report/printgradeinterview" element={<PrintGradeInterview />} />
          
          <Route path="*" element={<> not found</>} />
        </Routes>
        </Sidebar> 
      </Router>
         
    </div>
  );
}

export default App;
