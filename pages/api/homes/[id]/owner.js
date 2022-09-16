import { prisma } from "@/lib/prisma";

export default async function handler(req, res) {
  const { id } = req.query;

  const { owner } = await prisma.home.findUnique({
    where: { id },
    select: { owner: true },
  });

  if (!owner) {
    res.status(404).json({ message: "Not Found" });
  }

  res.status(200).json(owner);
}
