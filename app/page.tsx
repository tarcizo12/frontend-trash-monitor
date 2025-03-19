"use client";

import { motion } from "framer-motion";

const HelloWorld = () => {
  return (
    <motion.h1
      className="text-4xl font-bold text-center text-blue-600 dark:text-blue-400"
      initial={{ opacity: 0, y: -20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.8 }}
    >
      Hello, World!
    </motion.h1>
  );
};

export default function Home() {
  return (
    <div className="flex items-center justify-center min-h-screen bg-gray-100 dark:bg-gray-900">
      <HelloWorld />
    </div>
  );
}
