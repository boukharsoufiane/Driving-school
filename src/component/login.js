import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

const Login = ({ setIsLoggedIn }) => {
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const loginForm = (e) => {
    e.preventDefault();

    const loginData = { email, password };

    axios.post('http://127.0.0.1:8000/api/login', loginData)
      .then((response) => {
        console.log(response.data);
        setIsLoggedIn(true);
        navigate('/');
      })
      .catch((error) => {
        console.error(error.response.data);
      });
  };

  return (
    <div className="signupFrm" style={{ marginTop: '-35%' }}>
      <form onSubmit={loginForm} className="form">
        <h1 className="title">Log in</h1>

        <div className="inputContainer">
          <input type="email" className="input" placeholder="a" value={email} onChange={(e) => { setEmail(e.target.value) }} />
          <label htmlFor="" className="label">Email</label>
        </div>

        <div className="inputContainer">
          <input type="password" className="input" placeholder="a" value={password} onChange={(e) => { setPassword(e.target.value) }} />
          <label htmlFor="" className="label">Password</label>
        </div>

        <input type="submit" className="submitBtn" value="Log in" />
      </form>
    </div>
  );
};

export default Login;
