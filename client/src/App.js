import {useEffect, UseEffect, useState} from "react"
import {Route, Routes} from "react-router-dom"
import Login from "./components/Login";

function App() {
  const [currentUser, setCurrentUser] = useState('')
   
  useEffect(()=> {
    fetch('/me')
    .then( res => {
      if(res.ok){
        res.json().then(user => setCurrentUser(user))
      }
    })
  }, [])

  return (
  <div className="App">
    <h2>Lets Review Some Games</h2>
    <Routes>
      <Route path='/login' exact element={<Login setCurrentUser={setCurrentUser}/>}/>
    </Routes>
  </div>  
  );
}

export default App;
