import {useEffect, UseEffect, useState} from "react"
import {Route, Routes} from "react-router-dom"
import Login from "./components/Login";
import NavBar from "./components/NavBar";
import PlatformList from "./components/PlatformList";

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

console.log(currentUser);
 
return (
  <div className="App">
    <h2>Lets Review Some Games</h2>
    <Routes>
      <Route path='/' exact element={<Login setCurrentUser={setCurrentUser}/>}/>
      <Route path='/categories' exact element={<NavBar/>}/>
      <Route path='/platforms' exact element={<PlatformList/>}/>
    </Routes>
  </div>  
  );
}

export default App;
