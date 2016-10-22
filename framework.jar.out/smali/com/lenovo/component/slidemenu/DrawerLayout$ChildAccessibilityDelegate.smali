.class final Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChildAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/DrawerLayout;)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ChildAccessibilityDelegate;->this$0:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1844
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1845
    # invokes: Lcom/lenovo/component/slidemenu/DrawerLayout;->includeChildForAccessibilitiy(Landroid/view/View;)Z
    invoke-static {p1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->access$200(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 1851
    :cond_0
    return-void
.end method
