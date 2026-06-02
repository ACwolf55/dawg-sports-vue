
<script>
export default {
  name: "ContactUs",
 
};
</script>

<template>
    <div class="flex justify-center items-center min-h-screen bg-gradient-to-r from-purple-700 to-blue-500 p-6">
  <div class="w-full max-w-md p-6 bg-white rounded-lg shadow-lg">
    <h3 class="text-3xl font-bold text-center text-purple-700 mb-6">Contact</h3>
    <form 
      target="_blank" 
      action="https://formsubmit.co/Alexcwolf5@gmail.com" 
      method="POST"
      class="space-y-6"
    >
      <div class="flex flex-col gap-4">
        <div class="flex flex-col">
          <input 
            type="text" 
            name="name" 
            placeholder="Name" 
            required 
            class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-purple-700"
          />
        </div>
        <div class="flex flex-col">
          <input 
            type="email" 
            name="email" 
            placeholder="Email Address" 
            required 
            class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-purple-700"
          />
        </div>
      </div>
      <div class="flex flex-col">
        <textarea 
          placeholder="Your Message" 
          class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-purple-700" 
          name="message" 
          rows="5" 
          required
        ></textarea>
      </div>
      <button 
        type="submit" 
        class="w-full py-3 text-lg font-semibold text-white bg-purple-700 rounded-md hover:bg-purple-800 focus:outline-none focus:ring-4 focus:ring-purple-300 transition"
      >
        Send
      </button>
      <h4>This will open another page to verify you as human</h4>
    </form>
  </div>
</div>

</template>
