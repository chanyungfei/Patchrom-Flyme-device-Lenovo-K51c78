.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->hideMoreAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 576
    .local v0, "animatedValue":I
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # getter for: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->mBottomMoreView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$500(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)Landroid/widget/ScrollView;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 577
    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$10;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->updateDimView(I)V
    invoke-static {v1, v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$900(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 578
    return-void
.end method
