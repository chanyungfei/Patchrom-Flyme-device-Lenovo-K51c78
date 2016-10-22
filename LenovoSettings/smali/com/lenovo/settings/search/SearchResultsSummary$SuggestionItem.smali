.class Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionItem"
.end annotation


# instance fields
.field public query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    .line 453
    return-void
.end method
