.class Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$5;
.super Landroid/preference/Preference;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 779
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 780
    const v2, 0x7f0b001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 781
    .local v0, "summaryView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    const v3, 0x7f0c0976

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    return-void
.end method
