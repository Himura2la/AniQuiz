import React from 'react'
import { Helmet } from 'react-helmet'

const Header = () => (
    <Helmet>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/bootstrap.min.css" />
        <link rel="stylesheet" href="/style.css" />
        <title>AniQuiz</title>
    </Helmet>
)

export default Header