<script setup>
    import { ref } from 'vue';

    const isOpen = ref(false);
    const detailsRef = ref(null);

    function onToggle() {
        isOpen.value = detailsRef.value?.open ?? false;
    }
</script>

<template>
    <details
        class="border border-[#064e3b] rounded-md p-0 bg-[#d1fae5] transition-colors"
        @toggle="onToggle"
        ref="detailsRef"
    >
        <summary
            :class="[
                'bg-[#34d399] cursor-pointer font-semibold text-[#064e3b] p-2',
                isOpen ? 'rounded-tr rounded-tl border-b border-[#064e3b]' : 'rounded'
            ]"
        >
            Solution
        </summary>
        <div class="ml-4 mt-2 p-2">
            <slot/>
        </div>
    </details>
</template>

