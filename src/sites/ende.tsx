import { Global } from "../global.ts";

function Ende() {
  if (Global.cheated || localStorage.getItem("cheated") === "true") {
    localStorage.setItem("cheated", "true");
    window.location.href = "/txtadv/#/cheat";
  }

  const handleRestart = () => {
    window.location.href = "/txtadv/#/";
  };

  return (
    <div className="bg-main min-h-screen flex flex-col items-center justify-center py-10">
      <div className="max-w-2xl mx-auto text-center">
        <h1 className="accent font-bold text-4xl mb-6 animate-pulse">
          MISSION ACCOMPLISHED!
        </h1>
        <div className="bg-zinc-900 p-6 rounded-md shadow-lg mb-8">
          <p className="accent font-bold text-xl whitespace-pre-line mb-6">
            Du hast es geschafft!
          </p>
          <p className="text-lg mb-4">
            Du hast Zugriff auf das Schuladmin-System und kannst deine Noten ändern. 
          </p>
          <p className="text-lg mb-6">
            Jetzt kannst du deine Noten verbessern, aber sei vorsichtig - 
            zu viele Änderungen könnten Verdacht erregen!
          </p>
        </div>
          <div className="mt-8 animate-fadeIn">
            <h2 className="accent font-bold text-2xl whitespace-pre-line">Credits</h2>
            
            <div className="bg-zinc-900 p-4 rounded-md shadow-lg mb-6">
              <h3 className="text-xl font-bold mb-2">Entwicklung</h3>
              <p className="mb-4">Jonathan S. und Julius B.</p>
              
              <h3 className="text-xl font-bold mb-2">Story</h3>
              <p className="mb-4">Jonathan S. und Julius B.</p>
              
              <h3 className="text-xl font-bold mb-2">Design</h3>
              <p className="mb-4">Jonathan S. und Julius B.</p>
              
              <h3 className="text-xl font-bold mb-2">Framework</h3>
              <p className="mb-4">React, TypeScript, Tailwind CSS, Vite</p>

              <h3 className="text-xl font-bold mb-2">Git</h3>
              <a href="https://github.com/Neko-Game-Studios/FinalGradeHacked" className="underline">github.com/Neko-Game-Studios/FinalGradeHacked</a>
            </div>
            
            <div className="mt-6">
              <button 
                onClick={handleRestart}
                className="button"
              >
                Spiel neustarten
              </button>
            </div>
          </div>
      </div>
    </div>
  );
}

export default Ende;
