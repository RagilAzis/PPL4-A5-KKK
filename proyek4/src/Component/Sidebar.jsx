import { NavLink } from "react-router-dom";
import React from "react";
import { FaBars, FaLock, FaMoneyBill, FaUser } from "react-icons/fa";
import { BiSearch } from "react-icons/bi";
import AddToQueueIcon from '@mui/icons-material/AddToQueue';
import { useState } from "react";
import { AnimatePresence, motion } from "framer-motion";
import SidebarMenu from "./SidebarMenu";
import HomeIcon from '@mui/icons-material/Home';
import FolderCopyIcon from '@mui/icons-material/FolderCopy';
import SupervisorAccountIcon from '@mui/icons-material/SupervisorAccount';
import AnalyticsIcon from '@mui/icons-material/Analytics';
import PrintIcon from '@mui/icons-material/Print';

import 'bootstrap/dist/css/bootstrap.min.css';
const routes = [
  {
    path: "/",
    name: "Dashboard",
    icon: <HomeIcon />,
  },
  {
    path: "/master",
    name: "Master",
    icon: <FolderCopyIcon />,
    subRoutes: [
      {
        path: "/master/DataPeserta",
        name: "Data Peserta ",
        icon: <FaUser />,
      },
      {
        path: "/master/DataPenguji",
        name: "Data Penguji",
        icon: <FaUser />,
      },
    ],
  },
  {
    path: "/fit-proper",
    name: "Fit Proper",
    icon: <SupervisorAccountIcon />,
    subRoutes: [
      {
        path: "/fit-proper/RegFit",
        name: "Pendaftaran Fit & Proper",
        icon: <FaUser />,
      },
      {
        path: "/fit-proper/RegInterview",
        name: "Pendaftaran Wawancara",
        icon: <FaUser />,
      },
      {
        path: "/fit-proper/GradeFit",
        name: "Penilaian Fit & Proper",
        icon: <FaLock />,
      },
      {
        path: "/fit-proper/GradeInteview",
        name: "Penilaian Wawancara",
        icon: <FaLock />,
      },
    ],
  },
  {
    path: "/report",
    name: "Report",
    icon: <AnalyticsIcon />,
    exact: true,
    subRoutes: [
      {
        path: "/report/RepGradeFit",
        name: "Rekap Nilai Fit & Proper",
        icon: <AddToQueueIcon />,
      },
      {
        path: "/report/RepManualFit",
        name: "Rekap Manual Nilai Fit & Proper",
        icon: <AddToQueueIcon />,
      },
      {
        path: "/report/RepGradeInterview",
        name: "Rekap Nilai Wawancara",
        icon: <AddToQueueIcon />,
      },
      {
        path: "/report/PrintGradeFit",
        name: "Cetak Nilai Fit & Proper",
        icon: <PrintIcon />,
      },
      
      {
        path: "/report/PrintGradeInterview",
        name: "Cetak Nilai Wawancara",
        icon: <PrintIcon />,
      },
    ],
  },
];

const SideBar = ({ children }) => {
  const [isOpen, setIsOpen] = useState(false);
  const toggle = () => setIsOpen(!isOpen);
  const inputAnimation = {
    hidden: {
      width: 0,
      padding: 0,
      transition: {
        duration: 0.2,
      },
    },
    show: {
      width: "140px",
      padding: "5px 15px",
      transition: {
        duration: 0.2,
      },
    },
  };

  const showAnimation = {
    hidden: {
      width: 0,
      opacity: 0,
      transition: {
        duration: 0.5,
      },
    },
    show: {
      opacity: 1,
      width: "auto",
      transition: {
        duration: 0.5,
      },
    },
  };


  return (
    <>
      <div className="main-container">
        <motion.div
          animate={{
            width: isOpen ? "200px" : "45px",

            transition: {
              duration: 0.5,
              type: "spring",
              damping: 10,
            },
          }}
          className={`sidebar `}
        >
          <div className="top_section">
            <AnimatePresence>
              {isOpen && (
                <motion.h1
                  variants={showAnimation}
                  initial="hidden"
                  animate="show"
                  exit="hidden"
                  className="logo"
                >
                  PLN SUCCESSOR
                </motion.h1>
              )}
            </AnimatePresence>

            <div className="bars">
              <FaBars onClick={toggle} />
            </div>
          </div>
          <div className="search">
            <div className="search_icon">
              <BiSearch />
            </div>
            <AnimatePresence>
              {isOpen && (
                <motion.input
                  initial="hidden"
                  animate="show"
                  exit="hidden"
                  variants={inputAnimation}
                  type="text"
                  placeholder="Search"
                />
              )}
            </AnimatePresence>
          </div>
      <section className="routes">
            {routes.map((route, index) => {
              if (route.subRoutes) {
                return (
                  <SidebarMenu
                    setIsOpen={setIsOpen}
                    route={route}
                    showAnimation={showAnimation}
                    isOpen={isOpen}
                  />
                );
              }

              return (
                <NavLink
                  to={route.path}
                  key={index}
                  className="link"
                  activeClassName="active"
                >
                  <div className="icon">{route.icon}</div>
                  <AnimatePresence>
                    {isOpen && (
                      <motion.div
                        variants={showAnimation}
                        initial="hidden"
                        animate="show"
                        exit="hidden"
                        className="link_text"
                      >
                        {route.name}
                      </motion.div>
                    )}
                  </AnimatePresence>
                </NavLink>
              );
            })}
          </section>
        </motion.div>

        <main>{children}</main>
      </div>
    </>
  );
};

export default SideBar;