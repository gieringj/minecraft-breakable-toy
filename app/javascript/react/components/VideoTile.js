import React from "react"
import { Link } from "react-router-dom"

const VideoTile = (props) => {

    const video = props.video

    return(
        <div>
            <div className="card callout">
                <Link to={`/videos/${video.id}`}>
                    <div>
                        <div>
                            <p>{video.title}</p>
                        </div>
                        <div>
                            <p>{video.url}</p>
                        </div>
                    </div>
                </Link>
            </div>
        </div>
    )
    }

  export default VideoTile