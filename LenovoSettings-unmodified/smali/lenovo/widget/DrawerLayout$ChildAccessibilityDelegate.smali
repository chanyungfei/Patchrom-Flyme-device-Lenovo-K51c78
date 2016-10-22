.class final Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChildAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/DrawerLayout;


# direct methods
.method constructor <init>(Llenovo/widget/DrawerLayout;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;->this$0:Llenovo/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1893
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1894
    # invokes: Llenovo/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z
    invoke-static {p1}, Llenovo/widget/DrawerLayout;->access$300(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 1900
    :cond_0
    return-void
.end method
