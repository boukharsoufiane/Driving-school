import React, { useEffect, useState } from 'react';
import axios from 'axios';
import '../serie.css';
import { Link, useLocation } from 'react-router-dom';

const Serie = () => {
  const [questions, setQuestions] = useState([]);
  const [userResponses, setUserResponses] = useState([]);
  const [resultScore, setScore] = useState(0);
  const [showCorrection, setShowCorrection] = useState(false);
  const [reponseShow, setReponseShow] = useState(false);
  const location = useLocation();
  const searchParams = new URLSearchParams(location.search);
  const serie = searchParams.get('serie');
  console.log(serie);


  useEffect(() => {
    axios
      .get('http://127.0.0.1:8000/api/questions')
      .then((response) => {
        const serieQuestion = response.data.questions.filter((question) => question.serie === parseInt(serie));
        setQuestions(serieQuestion);
      })
      .catch((error) => {
        console.error(error);
      });

  }, [serie]);

  const handleResponseChange = (index, response) => {
    const updatedResponses = [...userResponses];
    updatedResponses[index] = response;
    setUserResponses(updatedResponses);
  };

  const handleSubmit = () => {
    let resultScore = 0;
    for (let i = 0; i < questions.length; i++) {
      if (userResponses[i] === questions[i].answer) {
        resultScore++;
      }
    }
    setScore(resultScore);
    setShowCorrection(true);
    setReponseShow(true);
  };

  return (
    <div className="container">
      <div className="serie">
        <h2>Questions of serie {serie}</h2>
        <div className="question-grid">
          {questions.map((question, index) => (
            <div key={index} className="question-item">
              <img src={`./images/${question.image}`} width={'500px'} alt={`question${index + 1}`} />
              <p className="text">{question.question} :</p>
              <div>
                <div className="answer">
                  <label>
                    <span>A : </span> {question.option1}
                  </label>
                  <input
                    type="radio"
                    name={`question-${index}`}
                    value={question.option1}
                    onChange={(e) => handleResponseChange(index, e.target.value)}
                  />
                </div>
                <div className="answer">
                  <label>
                    <span>B : </span> {question.option2}
                  </label>
                  <input
                    type="radio"
                    name={`question-${index}`}
                    value={question.option2}
                    onChange={(e) => handleResponseChange(index, e.target.value)}
                  />
                </div>
                <div className="answer">
                  <label>
                    <span>C : </span> {question.option3}
                  </label>
                  <input
                    type="radio"
                    name={`question-${index}`}
                    value={question.option3}
                    onChange={(e) => handleResponseChange(index, e.target.value)}
                  />
                </div>
              </div>
            </div>
          ))}
        </div>
        {reponseShow && <div className="score-circle">{resultScore}/9</div>}
        <div style={{ display: 'flex', marginTop: '2%' }}>
          <button onClick={handleSubmit}>Valide</button>
          {showCorrection && (
            <Link to={`/correction?serie=${serie}`} id="showCorrection" style={{ marginLeft: '10px' }}>
              Show correction
            </Link>
          )}
        </div>
      </div>
    </div>
  );
};

export default Serie;
