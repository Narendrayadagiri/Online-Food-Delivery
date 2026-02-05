import React from 'react';

function App() {
  return (
    <div className="app">
      <header className="app-header">
        <h1>Food Delivery</h1>
        <p>Browse restaurants and order your favorite meals.</p>
      </header>

      <main className="app-main">
        <section className="card">
          <h2>Welcome</h2>
          <p>
            The frontend is running successfully. Next step is to connect it to the Spring Boot
            backend and MySQL database.
          </p>
        </section>
      </main>
    </div>
  );
}

export default App;
