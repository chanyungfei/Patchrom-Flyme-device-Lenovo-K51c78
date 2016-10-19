.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# instance fields
.field private final mBuiltInDisplayId:I

.field private final mDefaultPhysicalDisplayInfo:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mLastRequestedRefreshRate:F

.field private final mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private final mPhysEx:Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

.field private mRefreshRateConfigIndices:[I

.field private mState:I

.field private mSupportedRefreshRates:[F

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 2
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 150
    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    invoke-direct {v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysEx:Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    .line 155
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 156
    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v1, p4, p5

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 159
    const-string v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysEx:Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    invoke-static {p2, v0}, Landroid/view/SurfaceControl;->getDisplayInfoEx(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z

    .line 163
    :cond_0
    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    .line 164
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p4, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 165
    return-void
.end method

.method private findDensityBucket()I
    .locals 6

    .prologue
    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 252
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v0, v1

    .line 253
    .local v0, "density":I
    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    .line 254
    const/16 v1, 0x8c

    if-ge v0, v1, :cond_1

    .line 255
    const/16 v0, 0xa0

    .line 263
    :cond_0
    :goto_0
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density mapping from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v3, v3, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v0

    .line 256
    :cond_1
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    .line 257
    const/16 v0, 0xa0

    goto :goto_0

    .line 258
    :cond_2
    const/16 v1, 0x118

    if-ge v0, v1, :cond_3

    .line 259
    const/16 v0, 0xf0

    goto :goto_0

    .line 261
    :cond_3
    const/16 v0, 0x140

    goto :goto_0
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 328
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 329
    return-void
.end method

.method private updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 8
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activePhys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    const/4 v7, 0x0

    .line 334
    array-length v0, p1

    .line 335
    .local v0, "N":I
    const/4 v2, 0x0

    .line 336
    .local v2, "idx":I
    new-array v5, v0, [F

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 337
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 339
    aget-object v4, p1, v1

    .line 340
    .local v4, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v5, v6, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v5, v6, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 345
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    aput v6, v5, v3

    .line 346
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    aput v1, v5, v3

    .line 338
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 349
    .end local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_0
    if-eq v3, v0, :cond_1

    .line 350
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 351
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 353
    :cond_1
    return-void

    .restart local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_2
    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_1
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 185
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuiltInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 189
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 191
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 192
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 193
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 194
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 195
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v2, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 196
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v2, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 197
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 198
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 207
    :cond_0
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 212
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 213
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 214
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 215
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 216
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 247
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 219
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 220
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 223
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 227
    const-string v0, "portrait"

    const-string v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 232
    :cond_3
    const-string v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysEx:Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    iget v0, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;->subtype:I

    if-ne v0, v4, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    .line 235
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDensityBucket()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 242
    :cond_4
    const-string v0, "persist.demo.hdmirotates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_0
.end method

.method public requestDisplayStateLocked(I)Ljava/lang/Runnable;
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 269
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eq v0, p1, :cond_0

    .line 270
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 271
    .local v3, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    .line 272
    .local v4, "token":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v5

    .line 273
    .local v5, "mode":I
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 274
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 279
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IILandroid/os/IBinder;I)V

    .line 295
    .end local v3    # "displayId":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "mode":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRefreshRateLocked(F)V
    .locals 6
    .param p1, "refreshRate"    # F

    .prologue
    .line 300
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 303
    :cond_0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    .line 304
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_3

    .line 305
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    array-length v0, v3

    .line 306
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    aget v3, v3, v2

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    aget v1, v3, v2

    .line 309
    .local v1, "configIndex":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 306
    .end local v1    # "configIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_2
    const-string v3, "LocalDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested refresh rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unsupported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 3
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 169
    aget-object v0, p1, p2

    .line 170
    .local v0, "newPhys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 172
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 173
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 176
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
