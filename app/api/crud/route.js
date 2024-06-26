import { NextRequest, NextResponse } from 'next/server';

export const GET = (req) => {
  const { searchParams } = new URL(req.url);
  const name = searchParams.get('name');
  
  console.log(name);

  return Response.json([
    { hi: name }
  ]);
};


export const POST = async (req) => {
    const body = await req.json();
    console.log(body);
  

    const response = body.map(item => ({
      hi: item.sk
    }));
  
    return NextResponse.json(response);
  };