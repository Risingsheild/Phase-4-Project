
function GameCard ({game}) {
    
    return (
        <div className="GameCard">
            <h1 className="Gameh1">{game.title}</h1>
            <img src={game.image_url} className="GameImage" alt={game.title}/>
            <h2>{game.genre}</h2>
        </div>

    ) 
}

export default GameCard