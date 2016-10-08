.class public Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrappmanager/MessageLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageInfo"
.end annotation


# instance fields
.field public durationElapsed:J

.field public durationUp:J

.field public finishDispatch:Ljava/lang/String;

.field public msgIdFinish:J

.field public msgIdStart:J

.field public startDispatch:Ljava/lang/String;

.field public startTimeElapsed:J

.field public startTimeUp:J

.field final synthetic x:Lcom/mediatek/anrappmanager/MessageLogger;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrappmanager/MessageLogger;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->x:Lcom/mediatek/anrappmanager/MessageLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->init()V

    .line 241
    return-void
.end method


# virtual methods
.method public copy(Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    .line 257
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    .line 258
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdFinish:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdFinish:J

    .line 259
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeUp:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeUp:J

    .line 260
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    .line 261
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    .line 262
    iget-wide v0, p1, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    .line 263
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 244
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startDispatch:Ljava/lang/String;

    .line 245
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->finishDispatch:Ljava/lang/String;

    .line 246
    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdStart:J

    .line 247
    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->msgIdFinish:J

    .line 248
    iput-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeUp:J

    .line 249
    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationUp:J

    .line 250
    iput-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->startTimeElapsed:J

    .line 251
    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;->durationElapsed:J

    .line 252
    return-void
.end method
