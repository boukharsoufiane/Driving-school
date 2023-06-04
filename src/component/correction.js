import React, { useEffect, useState } from 'react';
import axios from 'axios';
import '../serie.css';
import { Link, useLocation } from 'react-router-dom';

const Correction = () => {
  const [questions, setQuestions] = useState([]);
  const location = useLocation();
  const serie = new URLSearchParams(location.search).get('serie');

  useEffect(() => {
    axios
      .get('http://127.0.0.1:8000/api/questions',)
      .then((response) => {
        const serieQuestion = response.data.questions.filter((question) => question.serie === parseInt(serie));
        setQuestions(serieQuestion);
      })
      .catch((error) => {
        console.error(error);
      });
  }, [serie]);

  return (
    <div className="container">
      <div className="serie">
        <h2>Answer of serie {serie}</h2>
        <div className="question-grid">
          {questions.map((question, index) => (
            <div key={index} className="question-item">
              <img src={`./images/${question.image}`} width={'500px'} alt={`question${index + 1}`} />
              <p className="text">{question.question} :</p>
              <div>
                <div className="answer">
                  <label>
                    <span>Answer : </span> {question.answer}
                  </label>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
      <div style={{ marginBottom: '5%', marginLeft: '45%' }}>
        <Link to={`/serie?serie=${serie}`} id="showCorrection" style={{ marginLeft: '10px' }}>
          Back to serie
        </Link>
      </div>
    </div>
  );
};

export default Correction;
