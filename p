/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  v1906                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.com                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [1 -1 -2 0 0 0 0];

internalField   uniform 1e5;

boundaryField
{
    front
    {
        type            wedge;
    }
    back
    {
        type            wedge;
    }
    wedgeleft
    {
        type            zeroGradient;
        value           1e5;
    }
    water0_to_water1
    {
        type            calculated;
        value           uniform 1e5;
    }
    water0_to_cra4
    {
        type            calculated;
        value           uniform 1e5;
    }
}

// ************************************************************************* //
