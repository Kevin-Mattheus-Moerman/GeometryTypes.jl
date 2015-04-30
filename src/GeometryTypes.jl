module GeometryTypes

using FixedSizeArrays

export row
export column
export normalize

include("types.jl")

# Immutable Vector type
export Vector1
export Vector2
export Vector3
export Vector4

#Mutable Vector type
export MVector1
export MVector2
export MVector3
export MVector4

# Immutable Point type
export Point1
export Point2
export Point3
export Point4

#Mutable Point type
export MPoint1
export MPoint2
export MPoint3
export MPoint4

# Immutable Normal type
export Normal1
export Normal2
export Normal3
export Normal4

#Mutable Normal type
export MNormal1
export MNormal2
export MNormal3
export MNormal4

#Texture Coordinate Types
export UV
export UVW

export MUV
export MUVW

#Face Types
export Face
export Face3
export Face4
export Triangle

export GLFace
export GLTriangle
export GLQuad



# Some primitives
export Cube
export Circle
export Sphere
export Rectangle
export Quad
export AABB


export MCube
export MCircle
export MSphere
export MRectangle




export Matrix1x1
export Matrix1x2
export Matrix1x3
export Matrix1x4

export Matrix2x1
export Matrix2x2
export Matrix2x3
export Matrix2x4

export Matrix3x1
export Matrix3x2
export Matrix3x3
export Matrix3x4

export Matrix4x1
export Matrix4x2
export Matrix4x3
export Matrix4x4

#Mutable Matrices
export MMatrix1x1
export MMatrix1x2
export MMatrix1x3
export MMatrix1x4

export MMatrix2x1
export MMatrix2x2
export MMatrix2x3
export MMatrix2x4

export MMatrix3x1
export MMatrix3x2
export MMatrix3x3
export MMatrix3x4

export MMatrix4x1
export MMatrix4x2
export MMatrix4x3
export MMatrix4x4

function maxper(v0::Vector3, v1::Vector3)
	return Vector3(max(v0[1], v1[1]),
            max(v0[2], v1[2]),
            max(v0[3], v1[3]))
end
function minper(v0::Vector3, v1::Vector3)
	return Vector3(min(v0[1], v1[1]),
            min(v0[2], v1[2]),
            min(v0[3], v1[3]))
end

Base.minimum{T, NDIM}(x::Array{Vector3{T},NDIM}) = reduce(minper, x)
Base.maximum{T, NDIM}(x::Array{Vector3{T},NDIM}) = reduce(maxper, x)



end # module

