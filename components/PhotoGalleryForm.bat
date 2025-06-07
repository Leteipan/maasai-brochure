// components/PhotoGalleryForm.tsx
import { useState } from 'react';

export default function PhotoGalleryForm() {
  const [form, setForm] = useState({ name: '', email: '', phone: '', tour: '' });
  const [status, setStatus] = useState<'idle' | 'sending' | 'success' | 'error'>('idle');

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) =>
    setForm(f => ({ ...f, [e.target.name]: e.target.value }));

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setStatus('sending');
    try {
      const res = await fetch('/api/contact', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      });
      if (!res.ok) throw new Error();
      setStatus('success');
      setForm({ name: '', email: '', phone: '', tour: '' });
    } catch {
      setStatus('error');
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <h2 className="text-2xl font-bold text-[#3B3A29]">PHOTO GALLERY</h2>

      {status === 'success' && (
        <p className="text-green-600">Thank you! We'll be in touch soon.</p>
      )}
      {status === 'error' && (
        <p className="text-red-600">Oops! Something went wrong.</p>
      )}

      <input
        type="text"
        name="name"
        value={form.name}
        onChange={handleChange}
        required
        placeholder="Name"
        className="w-full px-4 py-2 rounded border border-gray-300 focus:outline-none"
      />
      <input
        type="email"
        name="email"
        value={form.email}
        onChange={handleChange}
        required
        placeholder="Email Address"
        className="w-full px-4 py-2 rounded border border-gray-300 focus:outline-none"
      />
      <input
        type="tel"
        name="phone"
        value={form.phone}
        onChange={handleChange}
        required
        placeholder="Phone Number"
        className="w-full px-4 py-2 rounded border border-gray-300 focus:outline-none"
      />
      <select
        name="tour"
        value={form.tour}
        onChange={handleChange}
        required
        className="w-full px-4 py-2 rounded border border-gray-300 focus:outline-none"
      >
        <option value="" disabled>
          Tour Package
        </option>
        <option value="half-day">Half-Day Village Visit</option>
        <option value="full-day">Full-Day Cultural Immersion</option>
        <option value="overnight">Overnight Stay</option>
        <option value="combo">Safari + Village</option>
      </select>

      <button
        type="submit"
        disabled={status === 'sending'}
        className="w-full bg-[#8C4510] hover:bg-[#7a3d0e] text-white py-2 rounded"
      >
        {status === 'sending' ? 'Submitting…' : 'SUBMIT'}
      </button>
    </form>
  );
}
