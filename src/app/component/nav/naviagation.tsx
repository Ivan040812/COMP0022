"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import UserAuth from "../auth/user_auth";

export default function Navigation() {
  const pathname = usePathname();

  return (
    <nav className="nav-container">
      <div className="nav-content">
        <ul className="nav-list">
          <li className={`nav-item ${pathname === "/" ? "active" : ""}`}>
            <Link href="/" className="nav-link">
              Movies
            </Link>
          </li>
          <li className={`nav-item ${pathname === "/genre_report" ? "active" : ""}`}>
            <Link href="/genre_report" className="nav-link">
              Genre Analysis Report
            </Link>
          </li>
        </ul>
        <UserAuth />
      </div>
    </nav>
  );
}