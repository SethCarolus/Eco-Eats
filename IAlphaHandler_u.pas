unit IAlphaHandler_u;

interface
  uses iAlpha_u;
  type
    IAlphaHandler = interface
        function getAlphaBy(const username : string) : IAlpha;
    end;

implementation

end.
