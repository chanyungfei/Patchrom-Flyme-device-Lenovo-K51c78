.class Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 1286
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase.3;"
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;->this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 7

    .prologue
    .line 1290
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase.3;"
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$3;->this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    # invokes: Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;->access$100(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;IJJLcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1291
    return-void
.end method
