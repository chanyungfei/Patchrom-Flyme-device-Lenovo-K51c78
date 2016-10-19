.class public Lcom/lenovo/internal/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FitWindowsLinearLayout.java"

# interfaces
.implements Lcom/lenovo/internal/widget/FitWindowsViewGroup;


# instance fields
.field private mListener:Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/FitWindowsLinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/internal/widget/FitWindowsLinearLayout;->mListener:Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/internal/widget/FitWindowsLinearLayout;->mListener:Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/internal/widget/FitWindowsLinearLayout;->mListener:Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 42
    return-void
.end method
