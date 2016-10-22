.class public Landroid/filterpacks/videoproc/BackDropperFilter;
.super Landroid/filterfw/core/Filter;
.source "BackDropperFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCEPT_STDDEV:F = 0.85f

.field private static final DEFAULT_ADAPT_RATE_BG:F = 0.0f

.field private static final DEFAULT_ADAPT_RATE_FG:F = 0.0f

.field private static final DEFAULT_AUTO_WB_SCALE:Ljava/lang/String; = "0.25"

.field private static final DEFAULT_BG_FIT_TRANSFORM:[F

.field private static final DEFAULT_EXPOSURE_CHANGE:F = 1.0f

.field private static final DEFAULT_HIER_LRG_EXPONENT:I = 0x3

.field private static final DEFAULT_HIER_LRG_SCALE:F = 0.7f

.field private static final DEFAULT_HIER_MID_EXPONENT:I = 0x2

.field private static final DEFAULT_HIER_MID_SCALE:F = 0.6f

.field private static final DEFAULT_HIER_SML_EXPONENT:I = 0x0

.field private static final DEFAULT_HIER_SML_SCALE:F = 0.5f

.field private static final DEFAULT_LEARNING_ADAPT_RATE:F = 0.2f

.field private static final DEFAULT_LEARNING_DONE_THRESHOLD:I = 0x14

.field private static final DEFAULT_LEARNING_DURATION:I = 0x28

.field private static final DEFAULT_LEARNING_VERIFY_DURATION:I = 0xa

.field private static final DEFAULT_MASK_BLEND_BG:F = 0.65f

.field private static final DEFAULT_MASK_BLEND_FG:F = 0.95f

.field private static final DEFAULT_MASK_HEIGHT_EXPONENT:I = 0x8

.field private static final DEFAULT_MASK_VERIFY_RATE:F = 0.25f

.field private static final DEFAULT_MASK_WIDTH_EXPONENT:I = 0x8

.field private static final DEFAULT_UV_SCALE_FACTOR:F = 1.35f

.field private static final DEFAULT_WHITE_BALANCE_BLUE_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_RED_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_TOGGLE:I = 0x0

.field private static final DEFAULT_Y_SCALE_FACTOR:F = 0.4f

.field private static final DISTANCE_STORAGE_SCALE:Ljava/lang/String; = "0.6"

.field private static FLAG_SAVE_AUTOWB:I = 0x0

.field private static FLAG_SAVE_BGINPUT:I = 0x0

.field private static FLAG_SAVE_BGMEAN:I = 0x0

.field private static FLAG_SAVE_BGVARIANCE:I = 0x0

.field private static FLAG_SAVE_DISTANCE:I = 0x0

.field private static FLAG_SAVE_DISTANCE_LEVEL:I = 0x0

.field private static FLAG_SAVE_MASK:I = 0x0

.field private static FLAG_SAVE_MASKAVERAGE:I = 0x0

.field private static FLAG_SAVE_MASKVERIFY:I = 0x0

.field private static FLAG_SAVE_OUTPUT:I = 0x0

.field private static FLAG_SAVE_VIDEOINPUT:I = 0x0

.field private static final MASK_SMOOTH_EXPONENT:Ljava/lang/String; = "2.0"

.field private static final MIN_VARIANCE:Ljava/lang/String; = "3.0"

.field private static final RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field private static final TAG:Ljava/lang/String; = "BackDropperFilter"

.field private static final VARIANCE_STORAGE_SCALE:Ljava/lang/String; = "5.0"

.field private static final mAutomaticWhiteBalance:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

.field private static final mBgDistanceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

.field private static final mBgMaskShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

.field private static final mBgSubtractForceShader:Ljava/lang/String; = "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

.field private static final mBgSubtractShader:Ljava/lang/String; = "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

.field private static final mDebugOutputNames:[Ljava/lang/String;

.field private static final mInputNames:[Ljava/lang/String;

.field private static final mMaskVerifyShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

.field private static final mMipmapShaderExp:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float exp_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord, exp_level);\n}\n"

.field private static final mOutputNames:[Ljava/lang/String;

.field private static mSharedUtilShader:Ljava/lang/String; = null

.field private static final mUpdateBgModelMeanShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

.field private static final mUpdateBgModelVarianceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"


# instance fields
.field private final BACKGROUND_FILL_CROP:I

.field private final BACKGROUND_FIT:I

.field private final BACKGROUND_STRETCH:I

.field private copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

.field private isOpen:Z

.field private mAcceptStddev:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "acceptStddev"
    .end annotation
.end field

.field private mAdaptRateBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateBg"
    .end annotation
.end field

.field private mAdaptRateFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateFg"
    .end annotation
.end field

.field private mAdaptRateLearning:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningAdaptRate"
    .end annotation
.end field

.field private mAutoWB:Landroid/filterfw/core/GLFrame;

.field private mAutoWBToggle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "autowbToggle"
    .end annotation
.end field

.field private mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mBackgroundFitMode:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "backgroundFitMode"
    .end annotation
.end field

.field private mBackgroundFitModeChanged:Z

.field private mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgDistanceProgramLrg:Landroid/filterfw/core/ShaderProgram;

.field private mBgDistanceProgramMid:Landroid/filterfw/core/ShaderProgram;

.field private mBgDistanceProgramSml:Landroid/filterfw/core/ShaderProgram;

.field private mBgInput:Landroid/filterfw/core/GLFrame;

.field private mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgMean:[Landroid/filterfw/core/GLFrame;

.field private mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgVariance:[Landroid/filterfw/core/GLFrame;

.field private mChromaScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "chromaScale"
    .end annotation
.end field

.field private mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

.field private mDistance:Landroid/filterfw/core/GLFrame;

.field private mDistanceLevelInitilized:Z

.field private mDistanceLrg:Landroid/filterfw/core/GLFrame;

.field private mDistanceMid:Landroid/filterfw/core/GLFrame;

.field private mDistanceSml:Landroid/filterfw/core/GLFrame;

.field private mExposureChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "exposureChange"
    .end annotation
.end field

.field private mFrameCount:I

.field private mHierarchyLrgExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgExp"
    .end annotation
.end field

.field private mHierarchyLrgScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgScale"
    .end annotation
.end field

.field private mHierarchyMidExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidExp"
    .end annotation
.end field

.field private mHierarchyMidScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidScale"
    .end annotation
.end field

.field private mHierarchySmlExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlExp"
    .end annotation
.end field

.field private mHierarchySmlScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlScale"
    .end annotation
.end field

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDoneListener"
    .end annotation
.end field

.field private mLearningDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDuration"
    .end annotation
.end field

.field private mLearningVerifyDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningVerifyDuration"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mLumScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "lumScale"
    .end annotation
.end field

.field private mMask:Landroid/filterfw/core/GLFrame;

.field private mMaskAverage:Landroid/filterfw/core/GLFrame;

.field private mMaskBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskBg"
    .end annotation
.end field

.field private mMaskFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskFg"
    .end annotation
.end field

.field private mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMaskHeightExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskHeightExp"
    .end annotation
.end field

.field private mMaskVerify:[Landroid/filterfw/core/GLFrame;

.field private mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

.field private mMaskWidthExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskWidthExp"
    .end annotation
.end field

.field private mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMirrorBg:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "mirrorBg"
    .end annotation
.end field

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPingPong:Z

.field private mProvideDebugOutputs:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "provideDebugOutputs"
    .end annotation
.end field

.field private mPyramidDepth:I

.field private mRelativeAspect:F

.field private mSaveOption:I

.field private mStartLearning:Z

.field private mSubsampleLevel:I

.field private mUseTheForce:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "useTheForce"
    .end annotation
.end field

.field private mVerifyRate:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskVerifyRate"
    .end annotation
.end field

.field private mVideoInput:Landroid/filterfw/core/GLFrame;

.field private mWhiteBalanceBlueChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceblueChange"
    .end annotation
.end field

.field private mWhiteBalanceRedChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceredChange"
    .end annotation
.end field

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 183
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    .line 208
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "video"

    aput-object v1, v0, v3

    const-string v1, "background"

    aput-object v1, v0, v2

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    .line 211
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "video"

    aput-object v1, v0, v3

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    .line 213
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "debug1"

    aput-object v1, v0, v3

    const-string v1, "debug2"

    aput-object v1, v0, v2

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    .line 229
    const-string/jumbo v0, "precision mediump float;\nuniform float fg_adapt_rate;\nuniform float bg_adapt_rate;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float dist_scale = 0.6;\nconst float inv_dist_scale = 1. / dist_scale;\nconst float var_scale=5.0;\nconst float inv_var_scale = 1. / var_scale;\nconst float min_variance = inv_var_scale *3.0/ 256.;\nconst float auto_wb_scale = 0.25;\n\nfloat gauss_dist_y(float y, float mean, float variance) {\n  float dist = (y - mean) * (y - mean) / variance;\n  return dist;\n}\nfloat gauss_dist_uv(vec2 uv, vec2 mean, vec2 variance) {\n  vec2 dist = (uv - mean) * (uv - mean) / variance;\n  return dist.r + dist.g;\n}\nfloat local_adapt_rate(float alpha) {\n  return mix(bg_adapt_rate, fg_adapt_rate, alpha);\n}\n\n"

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    .line 1020
    sput v2, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_VIDEOINPUT:I

    .line 1021
    sput v4, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGINPUT:I

    .line 1022
    const/4 v0, 0x4

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE:I

    .line 1023
    const/16 v0, 0x8

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASK:I

    .line 1024
    const/16 v0, 0x10

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_AUTOWB:I

    .line 1025
    const/16 v0, 0x20

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASKVERIFY:I

    .line 1026
    const/16 v0, 0x40

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASKAVERAGE:I

    .line 1027
    const/16 v0, 0x80

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_OUTPUT:I

    .line 1028
    const/16 v0, 0x100

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGMEAN:I

    .line 1029
    const/16 v0, 0x200

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGVARIANCE:I

    .line 1030
    const/16 v0, 0x400

    sput v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE_LEVEL:I

    return-void

    .line 183
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 514
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 49
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_STRETCH:I

    .line 50
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FIT:I

    .line 51
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FILL_CROP:I

    .line 53
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    .line 55
    const/16 v2, 0x28

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    .line 57
    const/16 v2, 0xa

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    .line 59
    const v2, 0x3f59999a    # 0.85f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 61
    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    .line 63
    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    .line 65
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    .line 70
    iput v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    .line 72
    iput v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    .line 77
    const/4 v2, 0x3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    .line 79
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    .line 81
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    .line 84
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    .line 86
    const v2, 0x3faccccd    # 1.35f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    .line 88
    const v2, 0x3f266666    # 0.65f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    .line 90
    const v2, 0x3f733333    # 0.95f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    .line 92
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    .line 94
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    .line 96
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    .line 98
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    .line 102
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    .line 104
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    .line 106
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    .line 108
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 113
    iput-boolean v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    .line 116
    iput-boolean v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    .line 121
    iput-boolean v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    .line 126
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    .line 881
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    .line 1094
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSaveOption:I

    .line 516
    iput-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    .line 518
    const-string/jumbo v2, "ro.media.effect.bgdropper.adj"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "adjStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 521
    :try_start_0
    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 522
    iget-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 523
    const-string v2, "BackDropperFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adjusting accept threshold by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "BackDropperFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badly formatted property ro.media.effect.bgdropper.adj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 613
    invoke-direct {p0, p1}, Landroid/filterpacks/videoproc/BackDropperFilter;->createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 700
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_1

    const-string v6, "BackDropperFilter"

    const-string v7, "Allocating BackDropperFilter frames"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6}, Landroid/filterfw/core/MutableFrameFormat;->getSize()I

    move-result v4

    .line 620
    .local v4, "numBytes":I
    new-array v1, v4, [B

    .line 621
    .local v1, "initialBgMean":[B
    new-array v2, v4, [B

    .line 622
    .local v2, "initialBgVariance":[B
    new-array v3, v4, [B

    .line 623
    .local v3, "initialMaskVerify":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 624
    const/16 v6, -0x80

    aput-byte v6, v1, v0

    .line 625
    const/16 v6, 0xa

    aput-byte v6, v2, v0

    .line 626
    aput-byte v10, v3, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v12, :cond_3

    .line 631
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 632
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v1, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 634
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 635
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 637
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 638
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 642
    :cond_3
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_4

    const-string v6, "BackDropperFilter"

    const-string v7, "Done allocating texture for Mean and Variance objects!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_4
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    .line 645
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    .line 646
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    .line 647
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    .line 648
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    .line 649
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    .line 652
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    .line 653
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    .line 656
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "accept_variance"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    new-array v5, v12, [F

    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    aput v6, v5, v10

    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    aput v6, v5, v11

    .line 658
    .local v5, "yuvWeights":[F
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "yuv_weights"

    invoke-virtual {v6, v7, v5}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_lrg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_mid"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_sml"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 662
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "exp_lrg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "exp_mid"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "exp_sml"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    if-eqz v6, :cond_6

    .line 667
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    .line 671
    :goto_3
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "bg_fit_transform"

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "mask_blend_bg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "mask_blend_fg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "exposure_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "whitebalanceblue_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "whitebalancered_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    .line 680
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 683
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    invoke-static {p2}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    .line 687
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 688
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "pyramid_depth"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "autowb_toggle"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 692
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "verify_rate"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_5

    const-string v6, "BackDropperFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shader width set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v8}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 698
    iput v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 699
    iput-boolean v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    goto/16 :goto_0

    .line 669
    :cond_6
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    goto/16 :goto_3
.end method

.method private createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z
    .locals 12
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 568
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-eqz v7, :cond_0

    .line 569
    const/4 v6, 0x0

    .line 600
    :goto_0
    return v6

    .line 572
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    if-nez v7, :cond_2

    .line 574
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Attempting to process input frame with unknown size"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 577
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 578
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    int-to-double v8, v7

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v2, v8

    .line 579
    .local v2, "maskWidth":I
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    int-to-double v8, v7

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v1, v8

    .line 580
    .local v1, "maskHeight":I
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 582
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 583
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7}, Landroid/filterfw/core/MutableFrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 584
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 585
    .local v5, "widthExp":I
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 586
    .local v0, "heightExp":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 587
    int-to-double v8, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 588
    .local v4, "memWidth":I
    int-to-double v8, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 589
    .local v3, "memHeight":I
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 590
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    .line 592
    iget-boolean v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v7, :cond_3

    .line 593
    const-string v7, "BackDropperFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mask frames size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v7, "BackDropperFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pyramid levels "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v7, "BackDropperFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Memory frames size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v7

    iput-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 599
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v6, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto/16 :goto_0
.end method

.method private isOptionEnabled(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1101
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSaveOption:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pyramidLevel(I)I
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 1016
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private refreshSaveOption()V
    .locals 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 1097
    const-string v0, "debug.bdf.output"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSaveOption:I

    .line 1099
    :cond_0
    return-void
.end method

.method private saveDistanceMipmapOutput(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v1, 0x0

    .line 1050
    sget v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE_LEVEL:I

    invoke-direct {p0, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1051
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLevelInitilized:Z

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    .line 1053
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    .line 1054
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    .line 1055
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float exp_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord, exp_level);\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramLrg:Landroid/filterfw/core/ShaderProgram;

    .line 1056
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramLrg:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "exp_level"

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float exp_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord, exp_level);\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramMid:Landroid/filterfw/core/ShaderProgram;

    .line 1058
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramMid:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "exp_level"

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float exp_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord, exp_level);\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramSml:Landroid/filterfw/core/ShaderProgram;

    .line 1060
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramSml:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "exp_level"

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLevelInitilized:Z

    .line 1063
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramLrg:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramLrg:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    iget-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 1065
    sget v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE_LEVEL:I

    invoke-direct {p0, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    const-string v1, "mDistanceLrg"

    invoke-direct {p0, v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 1067
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramMid:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2

    .line 1068
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramMid:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    iget-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 1069
    sget v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE_LEVEL:I

    invoke-direct {p0, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    const-string v1, "mDistanceMid"

    invoke-direct {p0, v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 1071
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramSml:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistanceProgramSml:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    iget-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 1073
    sget v0, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE_LEVEL:I

    invoke-direct {p0, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    const-string v1, "mDistanceSml"

    invoke-direct {p0, v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 1092
    :cond_3
    :goto_0
    return-void

    .line 1076
    :cond_4
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLevelInitilized:Z

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_5

    .line 1078
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1079
    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLrg:Landroid/filterfw/core/GLFrame;

    .line 1081
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_6

    .line 1082
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1083
    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceMid:Landroid/filterfw/core/GLFrame;

    .line 1085
    :cond_6
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_7

    .line 1086
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1087
    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceSml:Landroid/filterfw/core/GLFrame;

    .line 1089
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistanceLevelInitilized:Z

    goto :goto_0
.end method

.method private saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    .line 1106
    invoke-virtual {p1, p2}, Landroid/filterfw/core/Frame;->saveFrame(Ljava/lang/String;)V

    .line 1108
    :cond_0
    return-void
.end method

.method private updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V
    .locals 11
    .param p1, "video"    # Landroid/filterfw/core/Frame;
    .param p2, "background"    # Landroid/filterfw/core/Frame;
    .param p3, "fitModeChanged"    # Z

    .prologue
    .line 948
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 949
    .local v3, "foregroundAspect":F
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 950
    .local v0, "backgroundAspect":F
    div-float v2, v3, v0

    .line 951
    .local v2, "currentRelativeAspect":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    cmpl-float v8, v2, v8

    if-nez v8, :cond_0

    if-eqz p3, :cond_5

    .line 952
    :cond_0
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 953
    const/4 v4, 0x0

    .local v4, "xMin":F
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "xWidth":F
    const/4 v6, 0x0

    .local v6, "yMin":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 954
    .local v7, "yWidth":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    packed-switch v8, :pswitch_data_0

    .line 992
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    if-eqz v8, :cond_3

    .line 993
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v8, :cond_1

    const-string v8, "BackDropperFilter"

    const-string v9, "Mirroring the background!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_8

    .line 996
    :cond_2
    neg-float v5, v5

    .line 997
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v4, v8, v4

    .line 1004
    :cond_3
    :goto_1
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v8, :cond_4

    const-string v8, "BackDropperFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bgTransform: xMin, yMin, xWidth, yWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRelAspRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_4
    const/16 v8, 0x9

    new-array v1, v8, [F

    const/4 v8, 0x0

    aput v5, v1, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v1, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v1, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v1, v8

    const/4 v8, 0x4

    aput v7, v1, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    aput v9, v1, v8

    const/4 v8, 0x6

    aput v4, v1, v8

    const/4 v8, 0x7

    aput v6, v1, v8

    const/16 v8, 0x8

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v1, v8

    .line 1011
    .local v1, "bgTransform":[F
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v9, "bg_fit_transform"

    invoke-virtual {v8, v9, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1013
    .end local v1    # "bgTransform":[F
    .end local v4    # "xMin":F
    .end local v5    # "xWidth":F
    .end local v6    # "yMin":F
    .end local v7    # "yWidth":F
    :cond_5
    return-void

    .line 959
    .restart local v4    # "xMin":F
    .restart local v5    # "xWidth":F
    .restart local v6    # "yMin":F
    .restart local v7    # "yWidth":F
    :pswitch_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 962
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 963
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float v5, v8, v9

    goto/16 :goto_0

    .line 967
    :cond_6
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float/2addr v9, v10

    sub-float v6, v8, v9

    .line 968
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v7, v8, v9

    .line 970
    goto/16 :goto_0

    .line 972
    :pswitch_2
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 975
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float/2addr v9, v10

    sub-float v6, v8, v9

    .line 976
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v7, v8, v9

    goto/16 :goto_0

    .line 980
    :cond_7
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 981
    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    goto/16 :goto_0

    .line 1000
    :cond_8
    neg-float v7, v7

    .line 1001
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    goto/16 :goto_1

    .line 954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 884
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-boolean v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "BackDropperFilter"

    const-string v2, "Filter Closing!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 890
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 891
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 892
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 894
    :cond_2
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 895
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 896
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 897
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 898
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 899
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 901
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    goto :goto_0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x1

    .line 913
    const-string v1, "backgroundFitMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v1, "acceptStddev"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "accept_variance"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 917
    :cond_2
    const-string v1, "hierLrgScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_lrg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 919
    :cond_3
    const-string v1, "hierMidScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_mid"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 921
    :cond_4
    const-string v1, "hierSmlScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 922
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_sml"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 923
    :cond_5
    const-string v1, "hierLrgExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 924
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "exp_lrg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 925
    :cond_6
    const-string v1, "hierMidExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 926
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "exp_mid"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 927
    :cond_7
    const-string v1, "hierSmlExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 928
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "exp_sml"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 929
    :cond_8
    const-string v1, "lumScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "chromaScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 930
    :cond_9
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    aput v2, v0, v1

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    aput v1, v0, v3

    .line 931
    .local v0, "yuvWeights":[F
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "yuv_weights"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 932
    .end local v0    # "yuvWeights":[F
    :cond_a
    const-string/jumbo v1, "maskBg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 933
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "mask_blend_bg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 934
    :cond_b
    const-string/jumbo v1, "maskFg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 935
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "mask_blend_fg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 936
    :cond_c
    const-string v1, "exposureChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 937
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "exposure_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 938
    :cond_d
    const-string/jumbo v1, "whitebalanceredChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 939
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "whitebalancered_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 940
    :cond_e
    const-string/jumbo v1, "whitebalanceblueChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 941
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "whitebalanceblue_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 942
    :cond_f
    const-string v1, "autowbToggle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "autowb_toggle"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 560
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-virtual {v0, v2, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 563
    :cond_0
    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x2

    .line 604
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "BackDropperFilter"

    const-string v1, "Preparing BackDropperFilter!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    .line 607
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    .line 608
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    .line 609
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    .line 610
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 34
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 703
    invoke-direct/range {p0 .. p0}, Landroid/filterpacks/videoproc/BackDropperFilter;->refreshSaveOption()V

    .line 705
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v21

    .line 706
    .local v21, "video":Landroid/filterfw/core/Frame;
    const-string v22, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 707
    .local v5, "background":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V

    .line 710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const-string v22, "BackDropperFilter"

    const-string v23, "Starting learning"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 720
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    const/4 v12, 0x0

    .line 721
    .local v12, "inputIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    const/16 v18, 0x1

    .line 722
    .local v18, "outputIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-nez v22, :cond_15

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    .line 725
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V

    .line 726
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 731
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_VIDEOINPUT:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string/jumbo v23, "mVideoInput"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 732
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 733
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGINPUT:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string v23, "mBgInput"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 735
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 745
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 748
    :cond_4
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGMEAN:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mBgMean["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 749
    :cond_5
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_BGVARIANCE:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mBgVariance["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 751
    :cond_6
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v9, v0, [Landroid/filterfw/core/Frame;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v9, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v9, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v9, v22

    .line 752
    .local v9, "distInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 753
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_DISTANCE:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string v23, "mDistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 755
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 759
    invoke-direct/range {p0 .. p1}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveDistanceMipmapOutput(Landroid/filterfw/core/FilterContext;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 762
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASK:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string v23, "mMask"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 763
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 767
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [Landroid/filterfw/core/Frame;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v4, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v4, v22

    .line 768
    .local v4, "autoWBInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 769
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_AUTOWB:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string v23, "mAutoWB"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 771
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_1a

    .line 773
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    aget-object v24, v24, v18

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 777
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASKVERIFY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mMaskVerify["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 779
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 800
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASKAVERAGE:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const-string v23, "mMaskAverage"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 802
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 803
    .local v13, "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    .line 804
    .local v15, "mask_average":[B
    const/16 v22, 0x3

    aget-byte v22, v15, v22

    move/from16 v0, v22

    and-int/lit16 v6, v0, 0xff

    .line 806
    .local v6, "bi":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 807
    const-string v22, "BackDropperFilter"

    const-string v23, "Mask_average is %d, threshold is %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x14

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_d
    const/16 v22, 0x14

    move/from16 v0, v22

    if-lt v6, v0, :cond_18

    .line 813
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 831
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-gtz v22, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_10

    .line 833
    :cond_f
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v16, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v16, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v16, v22

    .line 834
    .local v16, "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 839
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v20, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v20, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v20, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v20, v22

    .line 842
    .local v20, "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 849
    .end local v16    # "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    .end local v20    # "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 850
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 851
    .local v7, "dbg1":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 852
    const-string v22, "debug1"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 853
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    .line 856
    .local v8, "dbg2":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 857
    const-string v22, "debug2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 858
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 861
    .end local v7    # "dbg1":Landroid/filterfw/core/Frame;
    .end local v8    # "dbg2":Landroid/filterfw/core/Frame;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    rem-int/lit8 v22, v22, 0x1e

    if-nez v22, :cond_12

    .line 865
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_1c

    .line 866
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 867
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    .line 879
    :cond_12
    :goto_5
    return-void

    .line 720
    .end local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .end local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    .end local v12    # "inputIndex":I
    .end local v18    # "outputIndex":I
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 721
    .restart local v12    # "inputIndex":I
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 722
    .restart local v18    # "outputIndex":I
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 785
    .restart local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .restart local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 788
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [Landroid/filterfw/core/Frame;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    aput-object v23, v14, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v14, v22

    .line 789
    .local v14, "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 790
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_MASKVERIFY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mMaskVerify["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 791
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    const/16 v24, 0x2701

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    goto/16 :goto_3

    .line 815
    .end local v14    # "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    .restart local v6    # "bi":I
    .restart local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "mask_average":[B
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    const-string v22, "BackDropperFilter"

    const-string v23, "Learning done"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;->onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V

    goto/16 :goto_4

    .line 822
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v17

    .line 823
    .local v17, "output":Landroid/filterfw/core/Frame;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    aput-object v21, v19, v22

    const/16 v22, 0x1

    aput-object v5, v19, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v19, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aput-object v23, v19, v22

    .line 824
    .local v19, "subtractInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 825
    sget v22, Landroid/filterpacks/videoproc/BackDropperFilter;->FLAG_SAVE_OUTPUT:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->isOptionEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    const-string/jumbo v22, "output"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->saveOutput(Landroid/filterfw/core/Frame;Ljava/lang/String;)V

    .line 826
    :cond_1b
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 827
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto/16 :goto_4

    .line 870
    .end local v17    # "output":Landroid/filterfw/core/Frame;
    .end local v19    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 871
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 873
    .local v10, "endTime":J
    const-string v22, "BackDropperFilter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Avg. frame duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v28, v0

    sub-long v28, v10, v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ms. Avg. fps: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-wide v28, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v30, v0

    sub-long v30, v10, v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x403e000000000000L    # 30.0

    div-double v30, v30, v32

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    goto/16 :goto_5
.end method

.method public declared-synchronized relearn()V
    .locals 1

    .prologue
    .line 907
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    monitor-exit p0

    return-void

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .locals 8

    .prologue
    .line 537
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 539
    .local v2, "imageFormat":Landroid/filterfw/core/FrameFormat;
    sget-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 540
    .local v3, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v3    # "inputName":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 544
    .local v5, "outputName":Ljava/lang/String;
    const-string/jumbo v6, "video"

    invoke-virtual {p0, v5, v6}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v5    # "outputName":Ljava/lang/String;
    :cond_1
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    if-eqz v6, :cond_2

    .line 549
    sget-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 550
    .restart local v5    # "outputName":Ljava/lang/String;
    const-string/jumbo v6, "video"

    invoke-virtual {p0, v5, v6}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 553
    .end local v5    # "outputName":Ljava/lang/String;
    :cond_2
    return-void
.end method
