#ifndef TEXTURE_SHADER_H_
#define TEXTURE_SHADER_H_

#include <Eigen/Dense>
#include "ShaderProgram.h"

#include "planecalib/eutils.h"

namespace planecalib
{

class TextureShader
{
public:
	TextureShader() {}

    bool init();
    void free() {mProgram.free(); mProgramFA.free();}

    //mvp is in normal opencv row-major order
    void setMVPMatrix(const cv::Matx44f &mvp);

    void renderTexture(GLuint target, GLuint id, const cv::Size &imageSize) {renderTexture(target,id,imageSize,Eigen::Vector2f(0,0));}
    void renderTexture(GLuint target, GLuint id, const cv::Size &imageSize,
                                        const Eigen::Vector2f &screenOrigin);
    void renderTexture(GLenum mode, GLuint target, GLuint id, const Eigen::Vector4f *vertices,
                                        const Eigen::Vector2f *textureCoords, int count);

    void renderTexture(GLuint target, GLuint id, const cv::Size &imageSize, float alpha) {renderTexture(target,id,imageSize,Eigen::Vector2f(0,0), alpha);}
    void renderTexture(GLuint target, GLuint id, const cv::Size &imageSize,
                                        const Eigen::Vector2f &screenOrigin, float alpha);
    void renderTexture(GLenum mode, GLuint target, GLuint id, const Eigen::Vector4f *vertices,
                                        const Eigen::Vector2f *textureCoords, int count, float alpha);

protected:
    ShaderProgram mProgram;
    int mUniformMVPMatrix;
    int mUniformTexture;
    int mAttribPosCoord;
    int mAttribTexCoord;

    ShaderProgram mProgramFA;
    int mUniformMVPMatrixFA;
    int mUniformTextureFA;
    int mUniformAlphaFA;
    int mAttribPosCoordFA;
    int mAttribTexCoordFA;
};

}

#endif
