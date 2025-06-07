// pages/index.tsx
import { useState } from 'react'
import Head from 'next/head'
import Image from 'next/image'
import Link from 'next/link'
import {
  FaHome,
  FaHotel,
  FaWineGlassAlt,
  FaPhone,
  FaEnvelope,
  FaGlobe,
  FaFacebookF,
  FaInstagram,
} from 'react-icons/fa'
import { GiElephant } from 'react-icons/gi'
import styles from '../styles/Home.module.css'

export default function Home() {
  const [form, setForm] = useState({
    name: '',
    email: '',
    phone: '',
    tour: '',
  })
  const [status, setStatus] = useState<'idle' | 'sending' | 'success' | 'error'>('idle')

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) =>
    setForm((f) => ({ ...f, [e.target.name]: e.target.value }))

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setStatus('sending')
    try {
      const res = await fetch('/api/contact', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      })
      if (!res.ok) throw new Error()
      setStatus('success')
      setForm({ name: '', email: '', phone: '', tour: '' })
    } catch {
      setStatus('error')
    }
  }

  return (
    <>
      <Head>
        <title>Enkaulele Sidan – Maasai Cultural Experience</title>
        <meta
          name="description"
          content="Discover authentic Maasai culture through immersive tours in Kajiado, Kenya."
        />
      </Head>

      <main className={styles.container}>
        {/* Hero */}
        <section className={styles.hero}>
          <Image
            src="https://images.pexels.com/photos/667202/pexels-photo-667202.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
            alt="Maasai Cultural Group"
            fill
            style={{ objectFit: 'cover' }}
            priority
          />
          <div className={styles.heroImageOverlay} />
          <div className={styles.heroOverlay}>
            <h1>OUR CULTURE, OUR JOURNEY</h1>
            <p>
              Karibu! We invite you to discover the rich traditions de Maasai at Enkaulele Sidan.
              Experience authentic culture, history, and hospitality in our community-driven
              cultural village.
            </p>
 
          </div>
        </section>

        {/* Experiences */}
        <section className={styles.experiences}>
          <h2>OUR EXPERIENCES</h2>
          <div className={styles.cards}>
            <div>
              <div>
                <FaHome />
                <div>
                  <h3>Half-Day Village Visit</h3>
                  <p>Half-Day Village Visit</p>
                </div>
              </div>
              <div>
                <FaHotel />
                <div>
                  <h3>Overnight Stay</h3>
                  <p>with Maasai Family</p>
                </div>
              </div>
            </div>
            <div>
              <div>
                <FaWineGlassAlt />
                <div>
                  <h3>Full-Day Cultural Immersion</h3>
                  <p>Stay at same-home 8 minutes</p>
                </div>
              </div>
              <div>
                <GiElephant />
                <div>
                  <h3>Combo: Safari + Village Experience</h3>
                  <p>Wildlife & tradition</p>
                </div>
              </div>
            </div>
          </div>
                     <div className={styles.ctaGroup}>
              <button>BOOK NOW</button>
              <Link href="#contact">EXPLORE TOURS</Link>
              <Link href="#contact">VIEW GALLERY</Link>
            </div>
        </section>

        {/* About */}
        <section className={styles.about}>
          <div>
            <h2>ABOUT US</h2>
            <p>
              Our mission is to preserve Maasai heritage and empower our community through
              sustainable tourism. Learn more about our story and values.
            </p>
          </div>
          <div className={styles.aboutImgWrapper}>
            <Image
              src="http://images.pexels.com/photos/11679893/pexels-photo-11679893.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
              alt="Maasai Hosts Smiling"
              fill
              className={styles.aboutImg}
            />
          </div>
        </section>

        {/* Gallery & Location */}
        <section className={styles.footerSection}>
          <div className={styles.formWrapper}>
            <h2>PHOTO GALLERY</h2>
            <form onSubmit={handleSubmit} className={styles.form} id="contact">
              <input name="name" placeholder="Name" onChange={handleChange} required />
              <input
                type="email"
                name="email"
                placeholder="Email Address"
                onChange={handleChange}
                required
              />
              <input
                type="tel"
                name="phone"
                placeholder="Phone Number"
                onChange={handleChange}
                required
              />
              <select name="tour" onChange={handleChange} required>
                <option value="" disabled>
                  Tour Package
                </option>
                <option value="half-day">Half-Day Village Visit</option>
                <option value="full-day">Full-Day Immersion</option>
                <option value="overnight">Overnight Stay</option>
                <option value="combo">Safari + Village Experience</option>
              </select>
              <button type="submit">SUBMIT</button>
            </form>
            <div className={styles.statusMessage}>
              {status === 'sending' && <p>Sending your request...</p>}
              {status === 'success' && <p>Thank you! Your request was sent successfully.</p>}
              {status === 'error' && <p>Oops! Something went wrong. Please try again.</p>}
            </div>
          </div>
          <div className={styles.locationWrapper}>
            <h2>LOCATION</h2>
            <p>Kajiado, Kenya</p>
            <p>
              <FaPhone />
              +254 729 98797
            </p>
            <p>
              <FaEnvelope />
              enkaulelesidan.org
            </p>
            <p>
              <FaGlobe />
              enkaulele.sidan
            </p>
            <div className={styles.socials}>
              <FaFacebookF />
              <FaInstagram />
            </div>
          </div>
        </section>
      </main>
    </>
  );
}
