import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import { useNavigate, useLocation } from "react-router-dom";

const HeaderDash = () => {
  const [userData, setUserData] = useState(null);
  const userId = localStorage.getItem("userId");
  const navigate = useNavigate();

  useEffect(() => {
    if (userId) {
      console.log("1112");
      // Siempre obtén los datos del usuario del servidor
      axios
        .get(`http://localhost:4000/api/usuarios/${userId}`)
        .then((response) => {
          setUserData(response.data.body[0]);
          console.log("userData", userData);
          localStorage.setItem(
            "userData",
            JSON.stringify(response.data.body[0])
          );
        })
        .catch((error) => {
          console.error("Error:", error);
        });
    }
  }, [userId]); // Observa userId para actualizar los datos del usuario cuando cambie

  return (
    <div className="bg-gradient-linear h-10vh py-4 shadow-xl flex items-center">
      <div className="w-9/10 m-auto items-center grid grid-cols-2 justify-center">
        <div className="flex justify-start items-center animate-slideLeftFadeIn">
          <Link to="/">
            <img
              className="h-16"
              src="../../src/assets/images/logoITDFull.png"
              alt="Escudo ITD"
            />
          </Link>
          <h1 className="ml-2 text-white font-bold text-xl">
            Instituto Tecnológico de Durango
          </h1>
        </div>
        <div className="justify-self-end animate-slideRightFadeIn">
          <div className="flex justify-end items-center">
            <p className="text-white mr-8">
              ¡Bienvenido al portal web del ITD!{" "}
              <span className="font-semibold">
                {userData ? userData.nombre : "Cargando..."}
              </span>
            </p>
            <button onClick={() => navigate("/perfil")}>
              <div className="w-12 h-12 relative">
                <img
                  className="rounded-full text-itd-blue shadow-2xl transform transition duration-500 hover:scale-110 hover:rotate-360 w-full h-full object-cover opacity-80 hover:opacity-100 absolute"
                  src={userData ? userData.imagen_perfil : ""}
                  alt="Usuario Perfil"
                />
              </div>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export { HeaderDash };
