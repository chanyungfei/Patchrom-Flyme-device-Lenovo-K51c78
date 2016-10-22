.class Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothAnimator"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V
    .locals 4
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1118
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    .line 1120
    int-to-float v0, p3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 1121
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mA:F

    .line 1122
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mB:F

    .line 1123
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mC:F

    .line 1124
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1145
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1149
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1153
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1161
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1165
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    div-float v0, v1, v2

    .line 1167
    .local v0, "fraction":F
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1

    .line 1168
    invoke-virtual {p0, v6, v6}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1169
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->onStop()V

    goto :goto_0

    .line 1171
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1172
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1139
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->onStart()V

    .line 1140
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1141
    return-void
.end method

.method public transform(F)F
    .locals 3
    .param p1, "frac"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1127
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1128
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1132
    :goto_0
    return v0

    .line 1129
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1130
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1132
    :cond_1
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
