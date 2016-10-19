.class public Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandDetectionEvent"
.end annotation


# instance fields
.field private boundBox:Landroid/graphics/Rect;

.field private confidence:F

.field private id:I

.field private pose:Lcom/mediatek/gesture/Gesture$HandPose;

.field final synthetic this$0:Lcom/mediatek/gesture/Gesture;


# direct methods
.method public constructor <init>(Lcom/mediatek/gesture/Gesture;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->this$0:Lcom/mediatek/gesture/Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;F)F
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
    .param p1, "x1"    # F

    .prologue
    .line 185
    iput p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->confidence:F

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;Lcom/mediatek/gesture/Gesture$HandPose;)Lcom/mediatek/gesture/Gesture$HandPose;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
    .param p1, "x1"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->pose:Lcom/mediatek/gesture/Gesture$HandPose;

    return-object p1
.end method


# virtual methods
.method public getBoundBox()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->boundBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->confidence:F

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->id:I

    return v0
.end method

.method public getPose()Lcom/mediatek/gesture/Gesture$HandPose;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->pose:Lcom/mediatek/gesture/Gesture$HandPose;

    return-object v0
.end method

.method public setBoundBox(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "boundBox"    # Landroid/graphics/Rect;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->boundBox:Landroid/graphics/Rect;

    .line 221
    return-void
.end method

.method public setConfidence(F)V
    .locals 0
    .param p1, "confidence"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->confidence:F

    .line 237
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->id:I

    .line 253
    return-void
.end method

.method public setPose(Lcom/mediatek/gesture/Gesture$HandPose;)V
    .locals 0
    .param p1, "pose"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->pose:Lcom/mediatek/gesture/Gesture$HandPose;

    .line 269
    return-void
.end method
