import { useEffect, useState } from "react";
import GameCard from "./GameCard";


function GameList() {
    const [gameData, setGameData] = useState([])
    
    useEffect(() =>{
        fetch('/games')
        .then(r => r.json())
        .then(data => setGameData(data))
    }, [])

    return (
        <div className="gameList">
            {gameData.map(
                (game) => {
                    return (<GameCard key={game.id} game={game}/>)
                }
            )}
        </div>
    )
}

export default GameList