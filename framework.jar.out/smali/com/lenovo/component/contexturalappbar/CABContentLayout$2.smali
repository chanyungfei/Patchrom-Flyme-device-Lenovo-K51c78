.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->addMoreButton()V
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
    .line 347
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getState()I
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$100(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getState()I
    invoke-static {v0}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$100(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$2;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V
    invoke-static {v0, v2}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    goto :goto_0
.end method
