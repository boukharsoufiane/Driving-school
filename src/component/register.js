import React, { useState } from 'react';
import axios from 'axios';
import '../App.css';
import {useNavigate } from 'react-router-dom';

const Register = () => {
    const navigate = useNavigate();
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const submitForm = async (e) => {
        e.preventDefault();

        const newUser = { name, email, password };

        await axios.post('http://127.0.0.1:8000/api/register', newUser)
            .then((response) => {
                navigate('/login');
            })
            .catch((error) => {
                console.error(error.response.data);
            });
    };

    return (
        <div className="signupFrm">
            <form onSubmit={submitForm} className="form">
                <h1 className="title">Register</h1>

                <div className="inputContainer">
                    <input type="text" className="input" placeholder="a" value={name} onChange={(e) => {setName(e.target.value)}} />
                    <label htmlFor="" className="label">Name</label>
                </div>

                <div className="inputContainer">
                    <input type="email" className="input" placeholder="a" value={email} onChange={(e) => {setEmail(e.target.value)}} />
                    <label htmlFor="" className="label">Email</label>
                </div>

                <div className="inputContainer">
                    <input type="password" className="input" placeholder="a" value={password} onChange={(e) => {setPassword(e.target.value)}}/>
                    <label htmlFor="" className="label">Password</label>
                </div>

                <div className="inputContainer">
                    <input type="password" className="input" placeholder="a" />
                    <label htmlFor="" className="label">Confirm Password</label>
                </div>

                <input type="submit" className="submitBtn" value="Register" />
            </form>
        </div>
    );
};

export default Register;
