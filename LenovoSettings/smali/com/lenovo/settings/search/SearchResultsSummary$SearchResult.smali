.class Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summaryOn"    # Ljava/lang/String;
    .param p4, "summaryOff"    # Ljava/lang/String;
    .param p5, "entries"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 559
    iput-object p2, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 560
    iput-object p3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    .line 561
    iput-object p4, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    .line 562
    iput-object p5, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    .line 563
    iput p6, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->iconResId:I

    .line 564
    iput-object p7, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 565
    return-void
.end method
