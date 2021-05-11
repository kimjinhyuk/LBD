import React from "react"
import { Link } from "gatsby"
import GlobalNav from "./global-nav"

export default () => (
  <header style={{ marginBottom: `1.5rem` }}>
    <Link to="/" style={{ textShadow: `none`, backgroundImage: `none` }}>
      <h3 style={{ display: `inline` }}>MySweetSite</h3>
    </Link>
    <GlobalNav />
  </header>
)
