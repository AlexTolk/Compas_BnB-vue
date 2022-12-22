module.exports = {
  content: [
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/views/devise/**/*.{html,html.erb,erb}",
    "./app/frontend/components/**/*.{vue,js,ts,jsx,tsx}",
    "./app/frontend/**/*.{vue,js,ts,jsx,tsx}",
    "./app/**/*.{vue,js,ts,jsx,tsx}"
  ],
  theme: {
    extend: {
      colors: {
        teal: "#028C92",
        pink: "#FF0263",
        light_teal: "#EAF7F6"
      }
    }
  }
  // plugins: [],
};
