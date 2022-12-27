<template>
  <div>
    <h3>This is the homepage component</h3>
    <h6>
      You can find me in: <span class="px-2 py-1 bg-slate-100">{{ dir }}</span>
    </h6>

    <div class="mt-8">
      <button @click="sayHello" class="btn btn-primary">{{ btnText }}</button>
    </div>
  </div>
</template>
