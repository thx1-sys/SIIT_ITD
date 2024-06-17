import { AdminBase } from "./AdminBase";
import React, { useState } from "react";
import { AdminMain } from "./AdminMain";
import { AdminNewWarningMainAdd } from "./AdminNewWarningMainAdd";

const AdminNewWarningAdd = () => {
  const [isNavVisible, setNavVisible] = useState(true);

  const toggleNav = () => {
    setNavVisible(!isNavVisible);
  };
  return (
    <div className="flex h-100vh items-center justify-center bg-white">
      <AdminBase />
      <div className="flex-grow bg-white shadow-2xl w-full h-full transform transition duration-500 scale-100 opacity-90 hover:opacity-100">
        <div className="w-full h-full overflow-y-auto">
          <AdminNewWarningMainAdd />
        </div>
      </div>
    </div>
  );
};

export { AdminNewWarningAdd };
