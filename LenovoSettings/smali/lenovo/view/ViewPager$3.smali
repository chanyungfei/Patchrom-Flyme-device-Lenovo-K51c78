.class Llenovo/view/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/ViewPager;


# direct methods
.method constructor <init>(Llenovo/view/ViewPager;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Llenovo/view/ViewPager$3;->this$0:Llenovo/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Llenovo/view/ViewPager$3;->this$0:Llenovo/view/ViewPager;

    const/4 v1, 0x0

    # invokes: Llenovo/view/ViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Llenovo/view/ViewPager;->access$000(Llenovo/view/ViewPager;I)V

    .line 258
    iget-object v0, p0, Llenovo/view/ViewPager$3;->this$0:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->populate()V

    .line 259
    return-void
.end method
