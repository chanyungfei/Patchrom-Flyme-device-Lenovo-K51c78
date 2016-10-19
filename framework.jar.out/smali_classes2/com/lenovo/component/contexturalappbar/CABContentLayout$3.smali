.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;
.super Ljava/lang/Object;
.source "CABContentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;->initContentView()V
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
    .line 422
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->getState()I
    invoke-static {v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$100(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$3;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    .line 427
    :cond_0
    return-void
.end method
