import { useEffect, useState } from 'react'
import axios from 'axios'
import './App.css'

function App() {
  const [response, setResponse] = useState<any>()

  useEffect(() => {
    axios.get('/api/manufacturers')
      .then(res => setResponse(res.data))
      .catch(err => setResponse('Error: ' + err));
  }, []);

  return (
    <>
      <h1>Vite + React</h1>
      <div className="card">
        {response &&
          <pre>
            {JSON.stringify(response, null, 2)}
          </pre>
        }
      </div>
    </>
  )
}

export default App
