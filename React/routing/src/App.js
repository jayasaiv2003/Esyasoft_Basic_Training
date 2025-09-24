import { BrowserRouter, Route,Routes} from "react-router-dom";
import React from 'react';
import Navbar from './components/Navbar';
import HomePage from './pages/HomePage';
import AboutPage from "./pages/AboutPage";
import ApiPage from "./pages/ApiPage";

function App() {
  return (
    <>
    <BrowserRouter>
      <Navbar/>
      <Routes>

        <Route path="/" element={<HomePage/>}/>
        <Route path="/about" element={<AboutPage/>}/>
        <Route path="/api" element={<ApiPage/>}/>

      </Routes>
    </BrowserRouter>
    </>
   
  );
}

export default App;
