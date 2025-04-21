import asyncio
import aiohttp

url = "https://servicios.siur.com.co/buscarutas/?ruta=p21a"

async def fetch(session, i):
    try:
        async with session.get(url):
            print(f"Request {i} sent.")
    except Exception as e:
        print(f"An error occurred in request {i}: {e}")

async def main():
    i = 0
    async with aiohttp.ClientSession() as session:
        while True:  # Infinite loop
            asyncio.create_task(fetch(session, i))
            i += 1

if __name__ == "__main__":
    asyncio.run(main())
