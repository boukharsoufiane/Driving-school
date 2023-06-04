import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import image from '../home1.jpg';
import '../serie.css';

const Section = () => {
    const location = useLocation();
    const forHome = location.pathname === '/';

    if (!forHome) {
        return null;
    }

    return (
        <div id='section'>
            <h1>About us</h1>
            <div id='secDiv'></div>
            <div className="sectionDiv container">
                <div>
                    <h2>Sign Up for online Tests</h2>
                    <p>Join us to expand your driving knowledge and enhance your skills. Register now to access a wide range of driving tests and educational resources, all available online. Whether you're a beginner or an experienced driver, our comprehensive tests and materials will help you stay informed and confident on the road.</p>
                </div>
                <div>
                    <img src={image} alt="image" />
                </div>
            </div>


        </div>

    );
};

export default Section;
