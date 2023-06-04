import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Register from './component/register';
import Login from './component/login';
import Serie from './component/serie';
import Signs from './component/signs';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import Footer from './component/footer';
import Header from './component/header';
import Section from './component/section';
import Correction from './component/correction';


function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  return (
    <Router>
      <Header isLoggedIn={isLoggedIn} />
      <Routes>
        <Route path="/serie" element={<Serie />} />
        <Route path="/Signs" element={<Signs />} />
        <Route path="/register" element={<Register />} />
        <Route path="/login" element={<Login setIsLoggedIn={setIsLoggedIn} />} />
        <Route path="/correction" element={<Correction />} />
      </Routes>
      <Section />
      <Footer />
    </Router>
  );
}

export default App;
