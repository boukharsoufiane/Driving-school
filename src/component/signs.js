import React, { useEffect, useState } from 'react';
import axios from 'axios';
import '../serie.css';


const Signs = () => {
    const [signs, setSigns] = useState([]);


    useEffect(() => {
        axios
            .get('http://127.0.0.1:8000/api/signs')
            .then((response) => {
                setSigns(response.data.signs);
            })
            .catch((error) => {
                console.error(error);
            });
    }, []);


    return (
        <div className='container'>
            <div className="serie">
                <h2>Signs and their meanings</h2>
                <div className="question-grid">
                    {signs.map((sign, index) => (
                        <div key={index} className="question-item">
                            <img src={`./signs/${sign.image}`} alt={`question${index + 1}`} />
                            <p className="text" id='description'>{sign.description} :</p>
                        </div>
                    ))}
                </div>
            </div>
        </div>

    );
};

export default Signs;