import React from 'react';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import image from '../drive.avif';
import axios from 'axios';
import '../App.css';

const Header = ({isLoggedIn}) => {
    const location = useLocation();
    const navigate = useNavigate();
    const showImage = location.pathname === '/';
    const showDiv = location.pathname === '/';

    const handleLogout = () => {
        axios.post('http://127.0.0.1:8000/api/logout')
            .then((response) => {
                console.log(response.data);
                navigate('/');
            })
            .catch((error) => {
                console.error(error.response.data);
            });
    };

    

    return (
        <header>
            <div className='nav'>
                <span style={{ color: '#7875B5' }}>School car</span>
                <nav>
                    <ul className="nav">
                        <li className="nav-item">
                            <Link to={"/"} style={{ color: '#7875B5' }} className="nav-link">Home</Link>
                        </li>
                        {isLoggedIn && (
                            <>
                                <li className="nav-item dropdown">
                                    <span className="nav-link dropdown-toggle" style={{ color: '#7875B5' }} data-bs-toggle="dropdown">Series</span>
                                    <ul className="dropdown-menu">
                                        <li><Link to={"/serie?serie=1"} className="dropdown-item">Serie 1</Link></li>
                                        <li><Link to={"/serie?serie=2"} className="dropdown-item">Serie 2</Link></li>
                                        <li><Link to={"/serie?serie=3"} className="dropdown-item">Serie 3</Link></li>
                                    </ul>
                                </li>
                                {isAdmin && (
                                    <li className="nav-item">
                                        <Link to={"/admin"} className="nav-link" style={{ color: '#7875B5' }}>Admin</Link>
                                    </li>
                                )}
                            </>
                        )}
                        <li className="nav-item"><Link to={"/Signs"} className="nav-link" style={{ color: '#7875B5' }}>Signs</Link></li>
                        {!isLoggedIn && (
                            <>
                                <li className="nav-item">
                                    <Link to={"/register"} className="nav-link" style={{ color: '#7875B5' }}>Register</Link>
                                </li>
                                <li className="nav-item">
                                    <Link to={"/login"} className="nav-link" style={{ color: '#7875B5' }}>Log in</Link>
                                </li>
                               
                            </>
                        )}
                        {isLoggedIn && (
                            
                            <li className="nav-item">
                                <form id='logOut' onSubmit={handleLogout}>
                                    <button type='submit' style={{ color: '#7875B5' }} className="nav-link">Log out</button>
                                </form>
                            </li>
                        )}
                    </ul>
                </nav>
            </div>
            <div style={{ display: 'flex' }}>
                {showImage && <img id='homeImage' src={image} alt="Home" />}
                {showDiv && (
                    <div id='getStarted'>
                        <p>Are you ready to put your road sign knowledge to the test? Here is a comprehensive quiz to challenge your understanding of various traffic signs. See how many you can answer correctly!</p>
                        <Link to={"/login"} className="nav-link" id='btnHome'>Get started</Link>
                    </div>
                )}
            </div>
        </header>
    );
};

export default Header;

